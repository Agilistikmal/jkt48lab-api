-- CreateTable
CREATE TABLE "members" (
    "id" TEXT NOT NULL,
    "short_name" TEXT NOT NULL,
    "full_name" TEXT NOT NULL,
    "generation" INTEGER NOT NULL,
    "birth_date" TEXT NOT NULL,
    "jikoshoukai" TEXT NOT NULL,
    "kabesha_image" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "join_date" TEXT NOT NULL,
    "graduate_date" TEXT NOT NULL,
    "lastshow_date" TEXT NOT NULL,
    "created_at" BIGINT NOT NULL,
    "updated_at" BIGINT NOT NULL,

    CONSTRAINT "members_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SocialMedia" (
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "followers" INTEGER NOT NULL,
    "member_id" TEXT NOT NULL,

    CONSTRAINT "SocialMedia_pkey" PRIMARY KEY ("code")
);

-- CreateIndex
CREATE UNIQUE INDEX "members_short_name_key" ON "members"("short_name");

-- AddForeignKey
ALTER TABLE "SocialMedia" ADD CONSTRAINT "SocialMedia_member_id_fkey" FOREIGN KEY ("member_id") REFERENCES "members"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
