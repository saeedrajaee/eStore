/*
  Warnings:

  - Added the required column `image` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `sellPrice` on the `Product` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "public"."Product" ADD COLUMN     "image" TEXT NOT NULL,
DROP COLUMN "sellPrice",
ADD COLUMN     "sellPrice" DOUBLE PRECISION NOT NULL;
