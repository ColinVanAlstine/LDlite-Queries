select substring(effective_call_number_components__call_number, 1, 3) as subclass, count (*)
from inventory.item__t
where effective_location_id IN ('ed12a1d9-33e7-4c62-8daf-485e7d2369c3','5eb79fcc-af08-4ae1-9ab3-dde11e330a01')
and effective_call_number_components__type_id = '2ee99558-94af-4d5f-b7af-f1c6862c2dc2' 
--and effective_call_number_components__type_id not in ('2ee99558-94af-4d5f-b7af-f1c6862c2dc2', '402c6f5d-e345-4937-a3a8-30efe6eb0368')
group by subclass
order by subclass;