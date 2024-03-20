import { z } from "zod";

export const SocialMedia = z.object({
  code: z.string(),
  name: z.string(),
  url: z.string(),
  followers: z.number(),
});
export type SocialMedia = z.infer<typeof SocialMedia>;
