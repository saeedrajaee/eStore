import { getUniqueProductType } from '@/actions/productTypesAction'
import EditProductType from '@/screens/product-type/edit/page'
import React from 'react'

const EditProductTypePage = async ({params, searchParams}) => {
    const productType = await getUniqueProductType(params.productTypeId)
  return (
    <div>
      <EditProductType productType={productType} searchParams={searchParams}/>
    </div>
  )
}

export default EditProductTypePage
