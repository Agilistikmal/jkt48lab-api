import { z } from "zod";
import { SocialMedia } from "./social_media_model";

export const Member = z.object({
  id: z.string().uuid(),
  short_name: z.string(),
  full_name: z.string(),
  generation: z.number().min(1),
  birth_date: z.string().regex(new RegExp("d{2}-d{2}-d{4}")),
  jikoshoukai: z.string(),
  social_media: z.array(SocialMedia),
  status: z.union([
    z.literal("active"),
    z.literal("graduate"),
    z.literal("resign"),
  ]),
  join_date: z.string().regex(new RegExp("d{2}-d{2}-d{4}")),
  graduate_date: z.string().regex(new RegExp("d{2}-d{2}-d{4}")).optional(),
  lastshow_date: z.string().regex(new RegExp("d{2}-d{2}-d{4}")).optional(),
  created_at: z.number(),
  updated_at: z.number(),
});
export type Member = z.infer<typeof Member>;
