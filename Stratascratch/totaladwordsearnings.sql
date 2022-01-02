/* https://platform.stratascratch.com/coding/10164-total-adwords-earnings?python= */

SELECT business_type, sum(adwords_earnings)
	from google_adwords_earnings
	group by business_type;