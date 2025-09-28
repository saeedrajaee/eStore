-- CreateTable
CREATE TABLE "public"."AdminUser" (
    "id" SERIAL NOT NULL,
    "userType" TEXT NOT NULL,
    "userName" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "AdminUser_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "AdminUser_userName_key" ON "public"."AdminUser"("userName");
