import EditUser from "@/screens/users/edit";
import { getUniqueUser } from "@/actions/userActions";

export default async function EditUserPage({ params, searchParams }) {
  const userData = await getUniqueUser(parseInt(params.userId));

  return (
    <>
      <EditUser searchParams={searchParams} userData={userData} />
    </>
  );
};