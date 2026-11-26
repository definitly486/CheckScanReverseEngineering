package defpackage;

import com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredPresenter;
import com.warefly.checkscan.presentation.account.sessionExpired.view.SessionExpiredFragment;
import com.warefly.checkscan.presentation.addScreenshots.bottomSheet.HelpLoadScreenshotBottomSheet;
import com.warefly.checkscan.presentation.addScreenshots.bottomSheet.HelpLoadScreenshotsPresenter;
import com.warefly.checkscan.presentation.addScreenshots.presenter.AddScreenshotsPresenter;
import com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsFragment;
import com.warefly.checkscan.presentation.affiliation.presenter.AffiliationCheckPresenter;
import com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckFragment;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;
import com.warefly.checkscan.presentation.balance.main.view.BalanceFragment;
import com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter;
import com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardFragment;
import com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter;
import com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeFragment;
import com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardPresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.card.view.TransferCardDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponPresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.coupons.view.TransferCouponDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhonePresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.view.TransferPhoneDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPDialog;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.presenter.WithdrawalMethodsPresenter;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsFragment;
import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardOptionsPresenter;
import com.warefly.checkscan.presentation.bankCardOptions.view.BankCardOptionsFragment;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.presenter.PointsProgramPresenter;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsDialog;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsPresenter;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramFragment;
import com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesPresenter;
import com.warefly.checkscan.presentation.bonuses.categories.view.CategoriesFragment;
import com.warefly.checkscan.presentation.bonuses.couponPage.presenter.CouponNewPresenter;
import com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewFragment;
import com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.presenter.FiltersNewDialogPresenter;
import com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FiltersNewDialog;
import com.warefly.checkscan.presentation.bonuses.coupons.presenter.CouponsPresenter;
import com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsFragment;
import com.warefly.checkscan.presentation.bonuses.favoritePreviews.presenter.FavoritePreviewsPresenter;
import com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsFragment;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewFragment;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.presenter.OnboardingHowGetCashPagePresenter;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view.OnboardingHowGetCashPageFragment;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.presenter.OnboardingHowGetCashPresenter;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view.OnboardingHowGetCashFragment;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.view.CategoriesDialog;
import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;
import com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsFragment;
import com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesPresenter;
import com.warefly.checkscan.presentation.bonuses.promocodes.view.PromocodesFragment;
import com.warefly.checkscan.presentation.bonuses.search.presenter.BonusesSearchPresenter;
import com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchFragment;
import com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.presenter.HowGetMoreCashbackPresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackDialog;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.BonusAdmitadNewPresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.presenter.RedirectDialogPresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialog;
import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewFragment;
import com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsPresenter;
import com.warefly.checkscan.presentation.bonuses.special.view.AllSpecialsFragment;
import com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter.ChooseRegionPresenter;
import com.warefly.checkscan.presentation.bonuses.view.chooseRegion.view.ChooseRegionFragment;
import com.warefly.checkscan.presentation.brandlink.presenter.BrandlinkPresenter;
import com.warefly.checkscan.presentation.brandlink.view.BrandlinkFragment;
import com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormPresenter;
import com.warefly.checkscan.presentation.chequePage.form.view.ChequeInfoFormDialog;
import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;
import com.warefly.checkscan.presentation.chequePage.share.cheque.presenter.ShareChequePresenter;
import com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog;
import com.warefly.checkscan.presentation.chequePage.view.ChequePageFragment;
import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.presenter.LightDatePickerPresenter;
import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerDialog;
import com.warefly.checkscan.presentation.cheques.exportCheques.presenter.ChequesExportPresenter;
import com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportFragment;
import com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.presenter.SumSortPresenter;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortDialog;
import com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter;
import com.warefly.checkscan.presentation.createCard.view.CreateCardFragment;
import com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.presenter.InputTimePickerPresenter;
import com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerDialog;
import com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingPresenter;
import com.warefly.checkscan.presentation.electrocheque.onboarding.view.ElectroChequesOnboardingFragment;
import com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentPresenter;
import com.warefly.checkscan.presentation.electrocheque.view.WebViewFragment;
import com.warefly.checkscan.presentation.favorite.presenter.FavoritePresenter;
import com.warefly.checkscan.presentation.favorite.view.FavoriteFragment;
import com.warefly.checkscan.presentation.flows.account.presenter.AccountPresenter;
import com.warefly.checkscan.presentation.flows.account.view.AccountFlowFragment;
import com.warefly.checkscan.presentation.flows.bonuses.presenter.BonusesInnerFlowPresenter;
import com.warefly.checkscan.presentation.flows.bonuses.view.BonusesInnerFlowFragment;
import com.warefly.checkscan.presentation.flows.cashback.presenter.CashbackPresenter;
import com.warefly.checkscan.presentation.flows.cashback.view.CashbackFlowFragment;
import com.warefly.checkscan.presentation.flows.catalog.presenter.CatalogFlowPresenter;
import com.warefly.checkscan.presentation.flows.catalog.view.CatalogFlowFragment;
import com.warefly.checkscan.presentation.flows.changePhone.presenter.ChangePhoneFlowPresenter;
import com.warefly.checkscan.presentation.flows.changePhone.view.ChangePhoneFlowFragment;
import com.warefly.checkscan.presentation.flows.cheque.presenter.ChequeFlowPresenter;
import com.warefly.checkscan.presentation.flows.cheque.view.ChequeFlowFragment;
import com.warefly.checkscan.presentation.flows.cobrand.presenter.CobrandPresenter;
import com.warefly.checkscan.presentation.flows.cobrand.view.CobrandFlowFragment;
import com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter;
import com.warefly.checkscan.presentation.flows.desktop.presenter.TabContainerPresenter;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import com.warefly.checkscan.presentation.flows.desktop.view.TabContainerFragment;
import com.warefly.checkscan.presentation.flows.electrocheques.presenter.ElectroChequesFlowPresenter;
import com.warefly.checkscan.presentation.flows.electrocheques.view.ElectroChequesFlowFragment;
import com.warefly.checkscan.presentation.flows.favorite.presenter.FavoriteFlowPresenter;
import com.warefly.checkscan.presentation.flows.favorite.view.FavoriteFlowFragment;
import com.warefly.checkscan.presentation.flows.firstopen.presenter.FirstOpenPresenter;
import com.warefly.checkscan.presentation.flows.firstopen.view.FirstOpenFlowFragment;
import com.warefly.checkscan.presentation.flows.gift.presenter.GiftFlowPresenter;
import com.warefly.checkscan.presentation.flows.gift.view.GiftFlowFragment;
import com.warefly.checkscan.presentation.flows.issueCard.presenter.IssueCardFlowPresenter;
import com.warefly.checkscan.presentation.flows.issueCard.view.IssueCardFlowFragment;
import com.warefly.checkscan.presentation.flows.offerLanding.presenter.OfferLandingFlowPresenter;
import com.warefly.checkscan.presentation.flows.offerLanding.view.OfferLandingFlowFragment;
import com.warefly.checkscan.presentation.flows.promotions.presenter.PromotionFlowPresenter;
import com.warefly.checkscan.presentation.flows.promotions.view.PromotionFlowFragment;
import com.warefly.checkscan.presentation.flows.requests.presenter.RequestsPresenter;
import com.warefly.checkscan.presentation.flows.requests.view.RequestsFlowFragment;
import com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.presenter.AddChequePresenter;
import com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeFragment;
import com.warefly.checkscan.presentation.flows.specifyPlace.presenter.SpecifyPlaceFlowPresenter;
import com.warefly.checkscan.presentation.flows.specifyPlace.view.SpecifyPlaceFlowFragment;
import com.warefly.checkscan.presentation.flows.tasks.presenter.TasksFlowPresenter;
import com.warefly.checkscan.presentation.flows.tasks.view.TasksFlowFragment;
import com.warefly.checkscan.presentation.flows.verification.presenter.VerificationFlowPresenter;
import com.warefly.checkscan.presentation.flows.verification.view.VerificationFlowFragment;
import com.warefly.checkscan.presentation.flows.webview.presenter.WebviewFlowPresenter;
import com.warefly.checkscan.presentation.flows.webview.view.WebviewFlowFragment;
import com.warefly.checkscan.presentation.geolocation.presenter.ClarificationGeolocationPresenter;
import com.warefly.checkscan.presentation.geolocation.presenter.SuccessGeolocationPresenter;
import com.warefly.checkscan.presentation.geolocation.view.ClarificationGeolocationFragment;
import com.warefly.checkscan.presentation.geolocation.view.SuccessGeolocationFragment;
import com.warefly.checkscan.presentation.gift.presenter.GiftPresenter;
import com.warefly.checkscan.presentation.gift.view.GiftFragment;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;
import com.warefly.checkscan.presentation.landing.view.LandingFragment;
import com.warefly.checkscan.presentation.mailChange.presenter.MailChangePresenter;
import com.warefly.checkscan.presentation.mailChange.view.MailChangeFragment;
import com.warefly.checkscan.presentation.newBankCards.presenter.NewBankCardPresenter;
import com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsFragment;
import com.warefly.checkscan.presentation.newSearchProducts.presenter.NewSearchProductPresenter;
import com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsFragment;
import com.warefly.checkscan.presentation.notifications.presenter.NotificationsPresenter;
import com.warefly.checkscan.presentation.notifications.view.NotificationsFragment;
import com.warefly.checkscan.presentation.offerCard.presenter.CardOfferLandingPresenter;
import com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingFragment;
import com.warefly.checkscan.presentation.offerLanding.landing.presenter.OfferLandingPresenter;
import com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingFragment;
import com.warefly.checkscan.presentation.onboardingCard.presenter.OnBoardingCardSlidesPresenter;
import com.warefly.checkscan.presentation.onboardingCard.slides.presenter.OnBoardingCardSlidePresenter;
import com.warefly.checkscan.presentation.onboardingCard.slides.view.OnBoardingCardSlideFragment;
import com.warefly.checkscan.presentation.onboardingCard.view.OnBoardingCardSlidesFragment;
import com.warefly.checkscan.presentation.onboardingOneSlide.holder.presenter.OnboardingOneSlideHolderPresenter;
import com.warefly.checkscan.presentation.onboardingOneSlide.holder.view.OnboardingOneSlideHolderFragment;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationDialog;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankVerificationPresenter;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.presenter.OnboardingOneSlidePresenter;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideFragment;
import com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsPresenter;
import com.warefly.checkscan.presentation.operations.allOperations.view.AllOperationsFragment;
import com.warefly.checkscan.presentation.operations.base.CatalogCardOperationsFragment;
import com.warefly.checkscan.presentation.operations.base.CatalogCardOperationsPresenter;
import com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangePresenter;
import com.warefly.checkscan.presentation.phoneChange.view.PhoneChangeFragment;
import com.warefly.checkscan.presentation.profile.presenter.ProfilePresenter;
import com.warefly.checkscan.presentation.profile.view.ProfileFlowFragment;
import com.warefly.checkscan.presentation.qrHand.calendarDialog.presenter.CalendarSpinnerPresenter;
import com.warefly.checkscan.presentation.qrHand.calendarDialog.view.CalendarSpinnerBottomSheetDialog;
import com.warefly.checkscan.presentation.qrHand.howFindData.presenter.HowFindDataInChequePresenter;
import com.warefly.checkscan.presentation.qrHand.howFindData.view.HowFindDataInChequeFragment;
import com.warefly.checkscan.presentation.qrHand.presenter.QrHandPresenter;
import com.warefly.checkscan.presentation.qrHand.view.QrHandFragment;
import com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter;
import com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashFragment;
import com.warefly.checkscan.presentation.queue.presenter.QueuePresenter;
import com.warefly.checkscan.presentation.queue.view.QueueFragment;
import com.warefly.checkscan.presentation.rebindCard.presenter.RebindCardPresenter;
import com.warefly.checkscan.presentation.rebindCard.view.RebindCardDialog;
import com.warefly.checkscan.presentation.replenishmentCard.presenter.ReplenishmentCardPresenter;
import com.warefly.checkscan.presentation.replenishmentCard.view.ReplenishmentCardFragment;
import com.warefly.checkscan.presentation.scanner.info.presenter.ScannerInfoPresenter;
import com.warefly.checkscan.presentation.scanner.info.view.ScannerInfoFragment;
import com.warefly.checkscan.presentation.scanner.onboarding.presenter.ScannerOnboardingPresenter;
import com.warefly.checkscan.presentation.scanner.onboarding.view.ScannerOnboardingFragment;
import com.warefly.checkscan.presentation.scanner.onboardingGallery.presenter.ScannerOnboardingGalleryPresenter;
import com.warefly.checkscan.presentation.scanner.onboardingGallery.view.ScannerOnboardingGalleryFragment;
import com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter;
import com.warefly.checkscan.presentation.scanner.view.ScannerFragment;
import com.warefly.checkscan.presentation.statistics.presenter.StatisticsPresenter;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.presenter.StatisticsPagePresenter;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageFragment;
import com.warefly.checkscan.presentation.statistics.view.StatisticsFragment;
import com.warefly.checkscan.presentation.stock.presenter.AgreementPresenter;
import com.warefly.checkscan.presentation.stock.view.AgreementDialog;
import com.warefly.checkscan.presentation.success.presenter.SuccessPresenter;
import com.warefly.checkscan.presentation.success.view.SuccessFragment;
import com.warefly.checkscan.presentation.tasks.checkbox.presenter.CheckboxTaskDetailsPresenter;
import com.warefly.checkscan.presentation.tasks.checkbox.view.CheckboxTaskDetailsFragment;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.view.CheckboxTaskStepsDetailsFragment;
import com.warefly.checkscan.presentation.tasks.completedTasks.presenter.CompletedTasksPresenter;
import com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksFragment;
import com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter;
import com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskFragment;
import com.warefly.checkscan.presentation.tasks.dialogs.error.presenter.TaskErrorPresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorBottomSheet;
import com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.presenter.NoAttemptsPresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view.NoAttemptsDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.result.presenter.DailyTaskResultPresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.success.presenter.TaskSuccessPresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessBottomSheet;
import com.warefly.checkscan.presentation.tasks.grouped.presenter.GroupedTasksPresenter;
import com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksFragment;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.presentation.tasks.main.view.TasksFragment;
import com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter;
import com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsFragment;
import com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter;
import com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsFragment;
import com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter.RewardedMultiTaskDetailsPresenter;
import com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsFragment;
import com.warefly.checkscan.presentation.tasks.taskDetails.presenter.TaskDetailsPresenter;
import com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsFragment;
import com.warefly.checkscan.presentation.update.presenter.UpdatePresenter;
import com.warefly.checkscan.presentation.update.view.UpdateFragment;
import com.warefly.checkscan.presentation.upridWeb.presenter.UpridWebPresenter;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import com.warefly.checkscan.presentation.verificationCardPhone.presenter.VerificationCardPhonePresenter;
import com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneFragment;
import com.warefly.checkscan.presentation.webview.WebViewReplenishmentActivity;
import com.warefly.checkscan.presentation.webview.WebViewReplenishmentPresenter;
import defpackage.ih5;
import defpackage.pf6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class se5 {
    public static final HashMap a;
    public static final HashMap b;
    public static final HashMap c;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(SessionExpiredPresenter.class, new c60(4));
        map.put(HelpLoadScreenshotsPresenter.class, new uv3(0));
        map.put(AddScreenshotsPresenter.class, new h9(0));
        map.put(AffiliationCheckPresenter.class, new ib(0));
        map.put(BalancePresenter.class, new c60(0));
        map.put(PromoSelectCardPresenter.class, new bp6(0));
        map.put(SelectPromocodePresenter.class, new i5(2));
        map.put(TransferCardPresenter.class, new fb1(2));
        map.put(TransferCouponPresenter.class, new de7(1));
        map.put(TransferPhonePresenter.class, new wq0(2));
        map.put(TransferSBPPresenter.class, new i61(2));
        map.put(WithdrawalMethodsPresenter.class, new kq3(3));
        map.put(BankCardOptionsPresenter.class, new i90(0));
        map.put(PointsProgramPresenter.class, new i62(1));
        map.put(TransferPointsPresenter.class, new lj4(2));
        map.put(CategoriesPresenter.class, new k71());
        map.put(CouponNewPresenter.class, new y32());
        map.put(FiltersNewDialogPresenter.class, new ra3());
        map.put(CouponsPresenter.class, new s42(0));
        map.put(FavoritePreviewsPresenter.class, new rc(2));
        map.put(BonusesMainNewPresenter.class, new dr0(0));
        map.put(OnboardingHowGetCashPagePresenter.class, new xw5());
        map.put(OnboardingHowGetCashPresenter.class, new yw5());
        map.put(com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesPresenter.class, new j71(0));
        map.put(NewOnlineShopPresenter.class, new en5(0));
        map.put(PromocodesPresenter.class, new ex5(1));
        map.put(BonusesSearchPresenter.class, new as0(0));
        map.put(HowGetMoreCashbackPresenter.class, new tc(1));
        map.put(BonusAdmitadNewPresenter.class, new wk0(0));
        map.put(RedirectDialogPresenter.class, new xm5(1));
        map.put(AllSpecialsPresenter.class, new tc(0));
        map.put(ChooseRegionPresenter.class, new kj1());
        map.put(BrandlinkPresenter.class, new vt0(0));
        map.put(ChequeInfoFormPresenter.class, new td1());
        map.put(ChequePagePresenter.class, new ye1(0));
        map.put(ShareChequePresenter.class, new dr0(1));
        map.put(LightDatePickerPresenter.class, new bq4(0));
        map.put(ChequesExportPresenter.class, new y8(1));
        map.put(ChequesPresenter.class, new di1(0));
        map.put(SumSortPresenter.class, new hd8());
        map.put(CreateCardPresenter.class, new i62(0));
        map.put(InputTimePickerPresenter.class, new v54(0));
        map.put(ElectroChequesOnBoardingPresenter.class, new rc(1));
        map.put(WebViewFragmentPresenter.class, new sg9());
        map.put(FavoritePresenter.class, new vt0(2));
        map.put(AccountPresenter.class, new i5(0));
        map.put(BonusesInnerFlowPresenter.class, new wq0(0));
        map.put(CashbackPresenter.class, new i61(0));
        map.put(CatalogFlowPresenter.class, new ey0(1));
        map.put(ChangePhoneFlowPresenter.class, new tb(1));
        map.put(ChequeFlowPresenter.class, new wq0(1));
        map.put(CobrandPresenter.class, new rm1(0));
        map.put(DesktopPresenter.class, new vt0(1));
        map.put(TabContainerPresenter.class, new j71(4));
        map.put(ElectroChequesFlowPresenter.class, new s42(1));
        map.put(FavoriteFlowPresenter.class, new q53(0));
        map.put(FirstOpenPresenter.class, new cc3());
        map.put(GiftFlowPresenter.class, new gq3(0));
        map.put(IssueCardFlowPresenter.class, new na4(0));
        map.put(OfferLandingFlowPresenter.class, new en5(1));
        map.put(PromotionFlowPresenter.class, new c60(3));
        map.put(RequestsPresenter.class, new ex5(2));
        map.put(AddChequePresenter.class, new r8());
        map.put(SpecifyPlaceFlowPresenter.class, new kq3(2));
        map.put(TasksFlowPresenter.class, new ls4(2));
        map.put(VerificationFlowPresenter.class, new q53(1));
        map.put(WebviewFlowPresenter.class, new jh9());
        map.put(ClarificationGeolocationPresenter.class, new wk1());
        map.put(SuccessGeolocationPresenter.class, new c60(5));
        map.put(GiftPresenter.class, new kq3(0));
        map.put(LandingPresenter.class, new i90(1));
        map.put(MailChangePresenter.class, new ry4());
        map.put(NewBankCardPresenter.class, new xm5(0));
        map.put(NewSearchProductPresenter.class, new gn5(0));
        map.put(NotificationsPresenter.class, new c60(2));
        map.put(CardOfferLandingPresenter.class, new c60(1));
        map.put(OfferLandingPresenter.class, new vb0(1));
        map.put(OnBoardingCardSlidesPresenter.class, new s42(2));
        map.put(OnBoardingCardSlidePresenter.class, new gq3(1));
        map.put(OnboardingOneSlideHolderPresenter.class, new zw5(0));
        map.put(BankVerificationPresenter.class, new vb0(0));
        map.put(OnboardingOneSlidePresenter.class, new ex5(0));
        map.put(AllOperationsPresenter.class, new rc(0));
        map.put(CatalogCardOperationsPresenter.class, new as0(1));
        map.put(PhoneChangePresenter.class, new n76());
        map.put(ProfilePresenter.class, new rm1(1));
        map.put(CalendarSpinnerPresenter.class, new ey0(0));
        map.put(HowFindDataInChequePresenter.class, new rc(3));
        map.put(QrHandPresenter.class, new j71(3));
        map.put(LoadingSplashPresenter.class, new ls4(0));
        map.put(QueuePresenter.class, new ew6());
        map.put(RebindCardPresenter.class, new bq4(1));
        map.put(ReplenishmentCardPresenter.class, new bp6(1));
        map.put(ScannerInfoPresenter.class, new yd7());
        map.put(ScannerOnboardingPresenter.class, new de7(0));
        map.put(ScannerOnboardingGalleryPresenter.class, new ce7());
        map.put(ScannerPresenter.class, new ac1(1));
        map.put(StatisticsPresenter.class, new a88(0));
        map.put(StatisticsPagePresenter.class, new wk0(1));
        map.put(AgreementPresenter.class, new tb(0));
        map.put(SuccessPresenter.class, new fb1(1));
        map.put(CheckboxTaskDetailsPresenter.class, new fb1(0));
        map.put(CheckboxTaskStepsDetailsPresenter.class, new ac1(0));
        map.put(CompletedTasksPresenter.class, new er1());
        map.put(DailyTaskPresenter.class, new k82());
        map.put(TaskErrorPresenter.class, new ta0(1));
        map.put(NoAttemptsPresenter.class, new ib(2));
        map.put(DailyTaskResultPresenter.class, new ib(1));
        map.put(TaskSuccessPresenter.class, new gn5(1));
        map.put(GroupedTasksPresenter.class, new ts3());
        map.put(TasksPresenter.class, new uv3(1));
        map.put(MultiTaskDetailsPresenter.class, new uf5());
        map.put(PromocodeTaskDetailsPresenter.class, new s42(3));
        map.put(RewardedMultiTaskDetailsPresenter.class, new i90(2));
        map.put(TaskDetailsPresenter.class, new xm5(2));
        map.put(UpdatePresenter.class, new v54(1));
        map.put(UpridWebPresenter.class, new dv(1));
        map.put(VerificationCardPhonePresenter.class, new i5(3));
        map.put(WebViewReplenishmentPresenter.class, new fb1(3));
        HashMap map2 = new HashMap();
        b = map2;
        map2.put(SessionExpiredFragment.class, Arrays.asList(new of6<SessionExpiredFragment>() { // from class: com.warefly.checkscan.presentation.account.sessionExpired.view.SessionExpiredFragment$$PresentersBinder

            public class a extends pf6<SessionExpiredFragment> {
                @Override // defpackage.pf6
                public final void a(SessionExpiredFragment sessionExpiredFragment, ih5 ih5Var) {
                    sessionExpiredFragment.presenter = (SessionExpiredPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SessionExpiredFragment sessionExpiredFragment) {
                    return sessionExpiredFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SessionExpiredFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SessionExpiredPresenter.class));
                return arrayList;
            }
        }));
        map2.put(HelpLoadScreenshotBottomSheet.class, Arrays.asList(new of6<HelpLoadScreenshotBottomSheet>() { // from class: com.warefly.checkscan.presentation.addScreenshots.bottomSheet.HelpLoadScreenshotBottomSheet$$PresentersBinder

            public class a extends pf6<HelpLoadScreenshotBottomSheet> {
                @Override // defpackage.pf6
                public final void a(HelpLoadScreenshotBottomSheet helpLoadScreenshotBottomSheet, ih5 ih5Var) {
                    helpLoadScreenshotBottomSheet.presenter = (HelpLoadScreenshotsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(HelpLoadScreenshotBottomSheet helpLoadScreenshotBottomSheet) {
                    return helpLoadScreenshotBottomSheet.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<HelpLoadScreenshotBottomSheet>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", HelpLoadScreenshotsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(AddScreenshotsFragment.class, Arrays.asList(new of6<AddScreenshotsFragment>() { // from class: com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsFragment$$PresentersBinder

            public class a extends pf6<AddScreenshotsFragment> {
                @Override // defpackage.pf6
                public final void a(AddScreenshotsFragment addScreenshotsFragment, ih5 ih5Var) {
                    addScreenshotsFragment.presenter = (AddScreenshotsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AddScreenshotsFragment addScreenshotsFragment) {
                    return addScreenshotsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AddScreenshotsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AddScreenshotsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(AffiliationCheckFragment.class, Arrays.asList(new of6<AffiliationCheckFragment>() { // from class: com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckFragment$$PresentersBinder

            public class a extends pf6<AffiliationCheckFragment> {
                @Override // defpackage.pf6
                public final void a(AffiliationCheckFragment affiliationCheckFragment, ih5 ih5Var) {
                    affiliationCheckFragment.presenter = (AffiliationCheckPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AffiliationCheckFragment affiliationCheckFragment) {
                    return affiliationCheckFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AffiliationCheckFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AffiliationCheckPresenter.class));
                return arrayList;
            }
        }));
        map2.put(BalanceFragment.class, Arrays.asList(new of6<BalanceFragment>() { // from class: com.warefly.checkscan.presentation.balance.main.view.BalanceFragment$$PresentersBinder

            public class a extends pf6<BalanceFragment> {
                @Override // defpackage.pf6
                public final void a(BalanceFragment balanceFragment, ih5 ih5Var) {
                    balanceFragment.presenter = (BalancePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BalanceFragment balanceFragment) {
                    return balanceFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BalanceFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BalancePresenter.class));
                return arrayList;
            }
        }));
        map2.put(PromoSelectCardFragment.class, Arrays.asList(new of6<PromoSelectCardFragment>() { // from class: com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardFragment$$PresentersBinder

            public class a extends pf6<PromoSelectCardFragment> {
                @Override // defpackage.pf6
                public final void a(PromoSelectCardFragment promoSelectCardFragment, ih5 ih5Var) {
                    promoSelectCardFragment.presenter = (PromoSelectCardPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(PromoSelectCardFragment promoSelectCardFragment) {
                    return promoSelectCardFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<PromoSelectCardFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", PromoSelectCardPresenter.class));
                return arrayList;
            }
        }));
        map2.put(SelectPromocodeFragment.class, Arrays.asList(new of6<SelectPromocodeFragment>() { // from class: com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeFragment$$PresentersBinder

            public class a extends pf6<SelectPromocodeFragment> {
                @Override // defpackage.pf6
                public final void a(SelectPromocodeFragment selectPromocodeFragment, ih5 ih5Var) {
                    selectPromocodeFragment.presenter = (SelectPromocodePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SelectPromocodeFragment selectPromocodeFragment) {
                    return selectPromocodeFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SelectPromocodeFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SelectPromocodePresenter.class));
                return arrayList;
            }
        }));
        map2.put(TransferCardDialog.class, Arrays.asList(new of6<TransferCardDialog>() { // from class: com.warefly.checkscan.presentation.balance.transferCashback.card.view.TransferCardDialog$$PresentersBinder

            public class a extends pf6<TransferCardDialog> {
                @Override // defpackage.pf6
                public final void a(TransferCardDialog transferCardDialog, ih5 ih5Var) {
                    transferCardDialog.presenter = (TransferCardPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TransferCardDialog transferCardDialog) {
                    return transferCardDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TransferCardDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TransferCardPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TransferCouponDialog.class, Arrays.asList(new of6<TransferCouponDialog>() { // from class: com.warefly.checkscan.presentation.balance.transferCashback.coupons.view.TransferCouponDialog$$PresentersBinder

            public class a extends pf6<TransferCouponDialog> {
                @Override // defpackage.pf6
                public final void a(TransferCouponDialog transferCouponDialog, ih5 ih5Var) {
                    transferCouponDialog.presenter = (TransferCouponPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TransferCouponDialog transferCouponDialog) {
                    return transferCouponDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TransferCouponDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TransferCouponPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TransferPhoneDialog.class, Arrays.asList(new of6<TransferPhoneDialog>() { // from class: com.warefly.checkscan.presentation.balance.transferCashback.phone.view.TransferPhoneDialog$$PresentersBinder

            public class a extends pf6<TransferPhoneDialog> {
                @Override // defpackage.pf6
                public final void a(TransferPhoneDialog transferPhoneDialog, ih5 ih5Var) {
                    transferPhoneDialog.presenter = (TransferPhonePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TransferPhoneDialog transferPhoneDialog) {
                    return transferPhoneDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TransferPhoneDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TransferPhonePresenter.class));
                return arrayList;
            }
        }));
        map2.put(TransferSBPDialog.class, Arrays.asList(new of6<TransferSBPDialog>() { // from class: com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPDialog$$PresentersBinder

            public class a extends pf6<TransferSBPDialog> {
                @Override // defpackage.pf6
                public final void a(TransferSBPDialog transferSBPDialog, ih5 ih5Var) {
                    transferSBPDialog.presenter = (TransferSBPPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TransferSBPDialog transferSBPDialog) {
                    return transferSBPDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TransferSBPDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TransferSBPPresenter.class));
                return arrayList;
            }
        }));
        map2.put(WithdrawalMethodsFragment.class, Arrays.asList(new of6<WithdrawalMethodsFragment>() { // from class: com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsFragment$$PresentersBinder

            public class a extends pf6<WithdrawalMethodsFragment> {
                @Override // defpackage.pf6
                public final void a(WithdrawalMethodsFragment withdrawalMethodsFragment, ih5 ih5Var) {
                    withdrawalMethodsFragment.presenter = (WithdrawalMethodsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(WithdrawalMethodsFragment withdrawalMethodsFragment) {
                    return withdrawalMethodsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<WithdrawalMethodsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", WithdrawalMethodsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(BankCardOptionsFragment.class, Arrays.asList(new of6<BankCardOptionsFragment>() { // from class: com.warefly.checkscan.presentation.bankCardOptions.view.BankCardOptionsFragment$$PresentersBinder

            public class a extends pf6<BankCardOptionsFragment> {
                @Override // defpackage.pf6
                public final void a(BankCardOptionsFragment bankCardOptionsFragment, ih5 ih5Var) {
                    bankCardOptionsFragment.presenter = (BankCardOptionsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BankCardOptionsFragment bankCardOptionsFragment) {
                    return bankCardOptionsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BankCardOptionsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BankCardOptionsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TransferPointsDialog.class, Arrays.asList(new of6<TransferPointsDialog>() { // from class: com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsDialog$$PresentersBinder

            public class a extends pf6<TransferPointsDialog> {
                @Override // defpackage.pf6
                public final void a(TransferPointsDialog transferPointsDialog, ih5 ih5Var) {
                    transferPointsDialog.presenter = (TransferPointsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TransferPointsDialog transferPointsDialog) {
                    return transferPointsDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TransferPointsDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TransferPointsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(PointsProgramFragment.class, Arrays.asList(new of6<PointsProgramFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramFragment$$PresentersBinder

            public class a extends pf6<PointsProgramFragment> {
                @Override // defpackage.pf6
                public final void a(PointsProgramFragment pointsProgramFragment, ih5 ih5Var) {
                    pointsProgramFragment.presenter = (PointsProgramPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(PointsProgramFragment pointsProgramFragment) {
                    return pointsProgramFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<PointsProgramFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", PointsProgramPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CategoriesFragment.class, Arrays.asList(new of6<CategoriesFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.categories.view.CategoriesFragment$$PresentersBinder

            public class a extends pf6<CategoriesFragment> {
                @Override // defpackage.pf6
                public final void a(CategoriesFragment categoriesFragment, ih5 ih5Var) {
                    categoriesFragment.presenter = (CategoriesPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CategoriesFragment categoriesFragment) {
                    return categoriesFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CategoriesFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CategoriesPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CouponNewFragment.class, Arrays.asList(new of6<CouponNewFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewFragment$$PresentersBinder

            public class a extends pf6<CouponNewFragment> {
                @Override // defpackage.pf6
                public final void a(CouponNewFragment couponNewFragment, ih5 ih5Var) {
                    couponNewFragment.presenter = (CouponNewPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CouponNewFragment couponNewFragment) {
                    return couponNewFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CouponNewFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CouponNewPresenter.class));
                return arrayList;
            }
        }));
        map2.put(FiltersNewDialog.class, Arrays.asList(new of6<FiltersNewDialog>() { // from class: com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FiltersNewDialog$$PresentersBinder

            public class a extends pf6<FiltersNewDialog> {
                @Override // defpackage.pf6
                public final void a(FiltersNewDialog filtersNewDialog, ih5 ih5Var) {
                    filtersNewDialog.presenter = (FiltersNewDialogPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(FiltersNewDialog filtersNewDialog) {
                    return filtersNewDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<FiltersNewDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", FiltersNewDialogPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CouponsFragment.class, Arrays.asList(new of6<CouponsFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsFragment$$PresentersBinder

            public class a extends pf6<CouponsFragment> {
                @Override // defpackage.pf6
                public final void a(CouponsFragment couponsFragment, ih5 ih5Var) {
                    couponsFragment.presenter = (CouponsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CouponsFragment couponsFragment) {
                    return couponsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CouponsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CouponsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(FavoritePreviewsFragment.class, Arrays.asList(new of6<FavoritePreviewsFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsFragment$$PresentersBinder

            public class a extends pf6<FavoritePreviewsFragment> {
                @Override // defpackage.pf6
                public final void a(FavoritePreviewsFragment favoritePreviewsFragment, ih5 ih5Var) {
                    favoritePreviewsFragment.presenter = (FavoritePreviewsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(FavoritePreviewsFragment favoritePreviewsFragment) {
                    return favoritePreviewsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<FavoritePreviewsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", FavoritePreviewsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(BonusesMainNewFragment.class, Arrays.asList(new of6<BonusesMainNewFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewFragment$$PresentersBinder

            public class a extends pf6<BonusesMainNewFragment> {
                @Override // defpackage.pf6
                public final void a(BonusesMainNewFragment bonusesMainNewFragment, ih5 ih5Var) {
                    bonusesMainNewFragment.presenter = (BonusesMainNewPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BonusesMainNewFragment bonusesMainNewFragment) {
                    return bonusesMainNewFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BonusesMainNewFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BonusesMainNewPresenter.class));
                return arrayList;
            }
        }));
        map2.put(OnboardingHowGetCashPageFragment.class, Arrays.asList(new of6<OnboardingHowGetCashPageFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view.OnboardingHowGetCashPageFragment$$PresentersBinder

            public class a extends pf6<OnboardingHowGetCashPageFragment> {
                @Override // defpackage.pf6
                public final void a(OnboardingHowGetCashPageFragment onboardingHowGetCashPageFragment, ih5 ih5Var) {
                    onboardingHowGetCashPageFragment.presenter = (OnboardingHowGetCashPagePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OnboardingHowGetCashPageFragment onboardingHowGetCashPageFragment) {
                    return onboardingHowGetCashPageFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OnboardingHowGetCashPageFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", OnboardingHowGetCashPagePresenter.class));
                return arrayList;
            }
        }));
        map2.put(OnboardingHowGetCashFragment.class, Arrays.asList(new of6<OnboardingHowGetCashFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view.OnboardingHowGetCashFragment$$PresentersBinder

            public class a extends pf6<OnboardingHowGetCashFragment> {
                @Override // defpackage.pf6
                public final void a(OnboardingHowGetCashFragment onboardingHowGetCashFragment, ih5 ih5Var) {
                    onboardingHowGetCashFragment.presenter = (OnboardingHowGetCashPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OnboardingHowGetCashFragment onboardingHowGetCashFragment) {
                    return onboardingHowGetCashFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OnboardingHowGetCashFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", OnboardingHowGetCashPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CategoriesDialog.class, Arrays.asList(new of6<CategoriesDialog>() { // from class: com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.view.CategoriesDialog$$PresentersBinder

            public class a extends pf6<CategoriesDialog> {
                @Override // defpackage.pf6
                public final void a(CategoriesDialog categoriesDialog, ih5 ih5Var) {
                    categoriesDialog.presenter = (com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CategoriesDialog categoriesDialog) {
                    return categoriesDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CategoriesDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesPresenter.class));
                return arrayList;
            }
        }));
        map2.put(OnlineShopsFragment.class, Arrays.asList(new of6<OnlineShopsFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsFragment$$PresentersBinder

            public class a extends pf6<OnlineShopsFragment> {
                @Override // defpackage.pf6
                public final void a(OnlineShopsFragment onlineShopsFragment, ih5 ih5Var) {
                    onlineShopsFragment.presenter = (NewOnlineShopPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OnlineShopsFragment onlineShopsFragment) {
                    return onlineShopsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OnlineShopsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", NewOnlineShopPresenter.class));
                return arrayList;
            }
        }));
        map2.put(PromocodesFragment.class, Arrays.asList(new of6<PromocodesFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.promocodes.view.PromocodesFragment$$PresentersBinder

            public class a extends pf6<PromocodesFragment> {
                @Override // defpackage.pf6
                public final void a(PromocodesFragment promocodesFragment, ih5 ih5Var) {
                    promocodesFragment.presenter = (PromocodesPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(PromocodesFragment promocodesFragment) {
                    return promocodesFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<PromocodesFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", PromocodesPresenter.class));
                return arrayList;
            }
        }));
        map2.put(BonusesSearchFragment.class, Arrays.asList(new of6<BonusesSearchFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchFragment$$PresentersBinder

            public class a extends pf6<BonusesSearchFragment> {
                @Override // defpackage.pf6
                public final void a(BonusesSearchFragment bonusesSearchFragment, ih5 ih5Var) {
                    bonusesSearchFragment.presenter = (BonusesSearchPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BonusesSearchFragment bonusesSearchFragment) {
                    return bonusesSearchFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BonusesSearchFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BonusesSearchPresenter.class));
                return arrayList;
            }
        }));
        map2.put(HowGetMoreCashbackDialog.class, Arrays.asList(new of6<HowGetMoreCashbackDialog>() { // from class: com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackDialog$$PresentersBinder

            public class a extends pf6<HowGetMoreCashbackDialog> {
                @Override // defpackage.pf6
                public final void a(HowGetMoreCashbackDialog howGetMoreCashbackDialog, ih5 ih5Var) {
                    howGetMoreCashbackDialog.presenter = (HowGetMoreCashbackPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(HowGetMoreCashbackDialog howGetMoreCashbackDialog) {
                    return howGetMoreCashbackDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<HowGetMoreCashbackDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", HowGetMoreCashbackPresenter.class));
                return arrayList;
            }
        }));
        map2.put(RedirectDialog.class, Arrays.asList(new of6<RedirectDialog>() { // from class: com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialog$$PresentersBinder

            public class a extends pf6<RedirectDialog> {
                @Override // defpackage.pf6
                public final void a(RedirectDialog redirectDialog, ih5 ih5Var) {
                    redirectDialog.presenter = (RedirectDialogPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(RedirectDialog redirectDialog) {
                    return redirectDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<RedirectDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", RedirectDialogPresenter.class));
                return arrayList;
            }
        }));
        map2.put(BonusAdmitadNewFragment.class, Arrays.asList(new of6<BonusAdmitadNewFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewFragment$$PresentersBinder

            public class a extends pf6<BonusAdmitadNewFragment> {
                @Override // defpackage.pf6
                public final void a(BonusAdmitadNewFragment bonusAdmitadNewFragment, ih5 ih5Var) {
                    bonusAdmitadNewFragment.presenter = (BonusAdmitadNewPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BonusAdmitadNewFragment bonusAdmitadNewFragment) {
                    return bonusAdmitadNewFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BonusAdmitadNewFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BonusAdmitadNewPresenter.class));
                return arrayList;
            }
        }));
        map2.put(AllSpecialsFragment.class, Arrays.asList(new of6<AllSpecialsFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.special.view.AllSpecialsFragment$$PresentersBinder

            public class a extends pf6<AllSpecialsFragment> {
                @Override // defpackage.pf6
                public final void a(AllSpecialsFragment allSpecialsFragment, ih5 ih5Var) {
                    allSpecialsFragment.presenter = (AllSpecialsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AllSpecialsFragment allSpecialsFragment) {
                    return allSpecialsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AllSpecialsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AllSpecialsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ChooseRegionFragment.class, Arrays.asList(new of6<ChooseRegionFragment>() { // from class: com.warefly.checkscan.presentation.bonuses.view.chooseRegion.view.ChooseRegionFragment$$PresentersBinder

            public class a extends pf6<ChooseRegionFragment> {
                @Override // defpackage.pf6
                public final void a(ChooseRegionFragment chooseRegionFragment, ih5 ih5Var) {
                    chooseRegionFragment.presenter = (ChooseRegionPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ChooseRegionFragment chooseRegionFragment) {
                    return chooseRegionFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ChooseRegionFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ChooseRegionPresenter.class));
                return arrayList;
            }
        }));
        map2.put(BrandlinkFragment.class, Arrays.asList(new of6<BrandlinkFragment>() { // from class: com.warefly.checkscan.presentation.brandlink.view.BrandlinkFragment$$PresentersBinder

            public class a extends pf6<BrandlinkFragment> {
                @Override // defpackage.pf6
                public final void a(BrandlinkFragment brandlinkFragment, ih5 ih5Var) {
                    brandlinkFragment.presenter = (BrandlinkPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BrandlinkFragment brandlinkFragment) {
                    return brandlinkFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BrandlinkFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BrandlinkPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ChequeInfoFormDialog.class, Arrays.asList(new of6<ChequeInfoFormDialog>() { // from class: com.warefly.checkscan.presentation.chequePage.form.view.ChequeInfoFormDialog$$PresentersBinder

            public class a extends pf6<ChequeInfoFormDialog> {
                @Override // defpackage.pf6
                public final void a(ChequeInfoFormDialog chequeInfoFormDialog, ih5 ih5Var) {
                    chequeInfoFormDialog.presenter = (ChequeInfoFormPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ChequeInfoFormDialog chequeInfoFormDialog) {
                    return chequeInfoFormDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ChequeInfoFormDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ChequeInfoFormPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ShareChequeDialog.class, Arrays.asList(new of6<ShareChequeDialog>() { // from class: com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog$$PresentersBinder

            public class a extends pf6<ShareChequeDialog> {
                @Override // defpackage.pf6
                public final void a(ShareChequeDialog shareChequeDialog, ih5 ih5Var) {
                    shareChequeDialog.presenter = (ShareChequePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ShareChequeDialog shareChequeDialog) {
                    return shareChequeDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ShareChequeDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ShareChequePresenter.class));
                return arrayList;
            }
        }));
        map2.put(ChequePageFragment.class, Arrays.asList(new of6<ChequePageFragment>() { // from class: com.warefly.checkscan.presentation.chequePage.view.ChequePageFragment$$PresentersBinder

            public class a extends pf6<ChequePageFragment> {
                @Override // defpackage.pf6
                public final void a(ChequePageFragment chequePageFragment, ih5 ih5Var) {
                    chequePageFragment.presenter = (ChequePagePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ChequePageFragment chequePageFragment) {
                    return chequePageFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ChequePageFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ChequePagePresenter.class));
                return arrayList;
            }
        }));
        map2.put(LightDatePickerDialog.class, Arrays.asList(new of6<LightDatePickerDialog>() { // from class: com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerDialog$$PresentersBinder

            public class a extends pf6<LightDatePickerDialog> {
                @Override // defpackage.pf6
                public final void a(LightDatePickerDialog lightDatePickerDialog, ih5 ih5Var) {
                    lightDatePickerDialog.presenter = (LightDatePickerPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(LightDatePickerDialog lightDatePickerDialog) {
                    return lightDatePickerDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<LightDatePickerDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", LightDatePickerPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ChequesExportFragment.class, Arrays.asList(new of6<ChequesExportFragment>() { // from class: com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportFragment$$PresentersBinder

            public class a extends pf6<ChequesExportFragment> {
                @Override // defpackage.pf6
                public final void a(ChequesExportFragment chequesExportFragment, ih5 ih5Var) {
                    chequesExportFragment.presenter = (ChequesExportPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ChequesExportFragment chequesExportFragment) {
                    return chequesExportFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ChequesExportFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ChequesExportPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ChequesFragment.class, Arrays.asList(new of6<ChequesFragment>() { // from class: com.warefly.checkscan.presentation.cheques.view.ChequesFragment$$PresentersBinder

            public class a extends pf6<ChequesFragment> {
                @Override // defpackage.pf6
                public final void a(ChequesFragment chequesFragment, ih5 ih5Var) {
                    chequesFragment.presenter = (ChequesPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ChequesFragment chequesFragment) {
                    return chequesFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ChequesFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ChequesPresenter.class));
                return arrayList;
            }
        }));
        map2.put(SumSortDialog.class, Arrays.asList(new of6<SumSortDialog>() { // from class: com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortDialog$$PresentersBinder

            public class a extends pf6<SumSortDialog> {
                @Override // defpackage.pf6
                public final void a(SumSortDialog sumSortDialog, ih5 ih5Var) {
                    sumSortDialog.presenter = (SumSortPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SumSortDialog sumSortDialog) {
                    return sumSortDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SumSortDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SumSortPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CreateCardFragment.class, Arrays.asList(new of6<CreateCardFragment>() { // from class: com.warefly.checkscan.presentation.createCard.view.CreateCardFragment$$PresentersBinder

            public class a extends pf6<CreateCardFragment> {
                @Override // defpackage.pf6
                public final void a(CreateCardFragment createCardFragment, ih5 ih5Var) {
                    createCardFragment.presenter = (CreateCardPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CreateCardFragment createCardFragment) {
                    return createCardFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CreateCardFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CreateCardPresenter.class));
                return arrayList;
            }
        }));
        map2.put(InputTimePickerDialog.class, Arrays.asList(new of6<InputTimePickerDialog>() { // from class: com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerDialog$$PresentersBinder

            public class a extends pf6<InputTimePickerDialog> {
                @Override // defpackage.pf6
                public final void a(InputTimePickerDialog inputTimePickerDialog, ih5 ih5Var) {
                    inputTimePickerDialog.presenter = (InputTimePickerPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(InputTimePickerDialog inputTimePickerDialog) {
                    return inputTimePickerDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<InputTimePickerDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", InputTimePickerPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ElectroChequesOnboardingFragment.class, Arrays.asList(new of6<ElectroChequesOnboardingFragment>() { // from class: com.warefly.checkscan.presentation.electrocheque.onboarding.view.ElectroChequesOnboardingFragment$$PresentersBinder

            public class a extends pf6<ElectroChequesOnboardingFragment> {
                @Override // defpackage.pf6
                public final void a(ElectroChequesOnboardingFragment electroChequesOnboardingFragment, ih5 ih5Var) {
                    electroChequesOnboardingFragment.presenter = (ElectroChequesOnBoardingPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ElectroChequesOnboardingFragment electroChequesOnboardingFragment) {
                    return electroChequesOnboardingFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ElectroChequesOnboardingFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ElectroChequesOnBoardingPresenter.class));
                return arrayList;
            }
        }));
        map2.put(WebViewFragment.class, Arrays.asList(new of6<WebViewFragment>() { // from class: com.warefly.checkscan.presentation.electrocheque.view.WebViewFragment$$PresentersBinder

            public class a extends pf6<WebViewFragment> {
                @Override // defpackage.pf6
                public final void a(WebViewFragment webViewFragment, ih5 ih5Var) {
                    webViewFragment.presenter = (WebViewFragmentPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(WebViewFragment webViewFragment) {
                    return webViewFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<WebViewFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", WebViewFragmentPresenter.class));
                return arrayList;
            }
        }));
        map2.put(FavoriteFragment.class, Arrays.asList(new of6<FavoriteFragment>() { // from class: com.warefly.checkscan.presentation.favorite.view.FavoriteFragment$$PresentersBinder

            public class a extends pf6<FavoriteFragment> {
                @Override // defpackage.pf6
                public final void a(FavoriteFragment favoriteFragment, ih5 ih5Var) {
                    favoriteFragment.presenter = (FavoritePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(FavoriteFragment favoriteFragment) {
                    return favoriteFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<FavoriteFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", FavoritePresenter.class));
                return arrayList;
            }
        }));
        map2.put(AccountFlowFragment.class, Arrays.asList(new of6<AccountFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.account.view.AccountFlowFragment$$PresentersBinder

            public class a extends pf6<AccountFlowFragment> {
                @Override // defpackage.pf6
                public final void a(AccountFlowFragment accountFlowFragment, ih5 ih5Var) {
                    accountFlowFragment.presenter = (AccountPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AccountFlowFragment accountFlowFragment) {
                    return accountFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AccountFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AccountPresenter.class));
                return arrayList;
            }
        }));
        map2.put(BonusesInnerFlowFragment.class, Arrays.asList(new of6<BonusesInnerFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.bonuses.view.BonusesInnerFlowFragment$$PresentersBinder

            public class a extends pf6<BonusesInnerFlowFragment> {
                @Override // defpackage.pf6
                public final void a(BonusesInnerFlowFragment bonusesInnerFlowFragment, ih5 ih5Var) {
                    bonusesInnerFlowFragment.presenter = (BonusesInnerFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BonusesInnerFlowFragment bonusesInnerFlowFragment) {
                    return bonusesInnerFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BonusesInnerFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BonusesInnerFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CashbackFlowFragment.class, Arrays.asList(new of6<CashbackFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.cashback.view.CashbackFlowFragment$$PresentersBinder

            public class a extends pf6<CashbackFlowFragment> {
                @Override // defpackage.pf6
                public final void a(CashbackFlowFragment cashbackFlowFragment, ih5 ih5Var) {
                    cashbackFlowFragment.presenter = (CashbackPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CashbackFlowFragment cashbackFlowFragment) {
                    return cashbackFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CashbackFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CashbackPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CatalogFlowFragment.class, Arrays.asList(new of6<CatalogFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.catalog.view.CatalogFlowFragment$$PresentersBinder

            public class a extends pf6<CatalogFlowFragment> {
                @Override // defpackage.pf6
                public final void a(CatalogFlowFragment catalogFlowFragment, ih5 ih5Var) {
                    catalogFlowFragment.presenter = (CatalogFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CatalogFlowFragment catalogFlowFragment) {
                    return catalogFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CatalogFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CatalogFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ChangePhoneFlowFragment.class, Arrays.asList(new of6<ChangePhoneFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.changePhone.view.ChangePhoneFlowFragment$$PresentersBinder

            public class a extends pf6<ChangePhoneFlowFragment> {
                @Override // defpackage.pf6
                public final void a(ChangePhoneFlowFragment changePhoneFlowFragment, ih5 ih5Var) {
                    changePhoneFlowFragment.presenter = (ChangePhoneFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ChangePhoneFlowFragment changePhoneFlowFragment) {
                    return changePhoneFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ChangePhoneFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ChangePhoneFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ChequeFlowFragment.class, Arrays.asList(new of6<ChequeFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.cheque.view.ChequeFlowFragment$$PresentersBinder

            public class a extends pf6<ChequeFlowFragment> {
                @Override // defpackage.pf6
                public final void a(ChequeFlowFragment chequeFlowFragment, ih5 ih5Var) {
                    chequeFlowFragment.presenter = (ChequeFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ChequeFlowFragment chequeFlowFragment) {
                    return chequeFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ChequeFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ChequeFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CobrandFlowFragment.class, Arrays.asList(new of6<CobrandFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.cobrand.view.CobrandFlowFragment$$PresentersBinder

            public class a extends pf6<CobrandFlowFragment> {
                @Override // defpackage.pf6
                public final void a(CobrandFlowFragment cobrandFlowFragment, ih5 ih5Var) {
                    cobrandFlowFragment.presenter = (CobrandPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CobrandFlowFragment cobrandFlowFragment) {
                    return cobrandFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CobrandFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CobrandPresenter.class));
                return arrayList;
            }
        }));
        map2.put(DesktopFlowFragment.class, Arrays.asList(new of6<DesktopFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment$$PresentersBinder

            public class a extends pf6<DesktopFlowFragment> {
                @Override // defpackage.pf6
                public final void a(DesktopFlowFragment desktopFlowFragment, ih5 ih5Var) {
                    desktopFlowFragment.presenter = (DesktopPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(DesktopFlowFragment desktopFlowFragment) {
                    return desktopFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<DesktopFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", DesktopPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TabContainerFragment.class, Arrays.asList(new of6<TabContainerFragment>() { // from class: com.warefly.checkscan.presentation.flows.desktop.view.TabContainerFragment$$PresentersBinder

            public class a extends pf6<TabContainerFragment> {
                @Override // defpackage.pf6
                public final void a(TabContainerFragment tabContainerFragment, ih5 ih5Var) {
                    tabContainerFragment.presenter = (TabContainerPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TabContainerFragment tabContainerFragment) {
                    return tabContainerFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TabContainerFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TabContainerPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ElectroChequesFlowFragment.class, Arrays.asList(new of6<ElectroChequesFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.electrocheques.view.ElectroChequesFlowFragment$$PresentersBinder

            public class a extends pf6<ElectroChequesFlowFragment> {
                @Override // defpackage.pf6
                public final void a(ElectroChequesFlowFragment electroChequesFlowFragment, ih5 ih5Var) {
                    electroChequesFlowFragment.presenter = (ElectroChequesFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ElectroChequesFlowFragment electroChequesFlowFragment) {
                    return electroChequesFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ElectroChequesFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ElectroChequesFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(FavoriteFlowFragment.class, Arrays.asList(new of6<FavoriteFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.favorite.view.FavoriteFlowFragment$$PresentersBinder

            public class a extends pf6<FavoriteFlowFragment> {
                @Override // defpackage.pf6
                public final void a(FavoriteFlowFragment favoriteFlowFragment, ih5 ih5Var) {
                    favoriteFlowFragment.presenter = (FavoriteFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(FavoriteFlowFragment favoriteFlowFragment) {
                    return favoriteFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<FavoriteFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", FavoriteFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(FirstOpenFlowFragment.class, Arrays.asList(new of6<FirstOpenFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.firstopen.view.FirstOpenFlowFragment$$PresentersBinder

            public class a extends pf6<FirstOpenFlowFragment> {
                @Override // defpackage.pf6
                public final void a(FirstOpenFlowFragment firstOpenFlowFragment, ih5 ih5Var) {
                    firstOpenFlowFragment.presenter = (FirstOpenPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(FirstOpenFlowFragment firstOpenFlowFragment) {
                    return firstOpenFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<FirstOpenFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", FirstOpenPresenter.class));
                return arrayList;
            }
        }));
        map2.put(GiftFlowFragment.class, Arrays.asList(new of6<GiftFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.gift.view.GiftFlowFragment$$PresentersBinder

            public class a extends pf6<GiftFlowFragment> {
                @Override // defpackage.pf6
                public final void a(GiftFlowFragment giftFlowFragment, ih5 ih5Var) {
                    giftFlowFragment.presenter = (GiftFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(GiftFlowFragment giftFlowFragment) {
                    return giftFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<GiftFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", GiftFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(IssueCardFlowFragment.class, Arrays.asList(new of6<IssueCardFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.issueCard.view.IssueCardFlowFragment$$PresentersBinder

            public class a extends pf6<IssueCardFlowFragment> {
                @Override // defpackage.pf6
                public final void a(IssueCardFlowFragment issueCardFlowFragment, ih5 ih5Var) {
                    issueCardFlowFragment.presenter = (IssueCardFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(IssueCardFlowFragment issueCardFlowFragment) {
                    return issueCardFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<IssueCardFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", IssueCardFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(OfferLandingFlowFragment.class, Arrays.asList(new of6<OfferLandingFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.offerLanding.view.OfferLandingFlowFragment$$PresentersBinder

            public class a extends pf6<OfferLandingFlowFragment> {
                @Override // defpackage.pf6
                public final void a(OfferLandingFlowFragment offerLandingFlowFragment, ih5 ih5Var) {
                    offerLandingFlowFragment.presenter = (OfferLandingFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OfferLandingFlowFragment offerLandingFlowFragment) {
                    return offerLandingFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OfferLandingFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", OfferLandingFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(PromotionFlowFragment.class, Arrays.asList(new of6<PromotionFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.promotions.view.PromotionFlowFragment$$PresentersBinder

            public class a extends pf6<PromotionFlowFragment> {
                @Override // defpackage.pf6
                public final void a(PromotionFlowFragment promotionFlowFragment, ih5 ih5Var) {
                    promotionFlowFragment.presenter = (PromotionFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(PromotionFlowFragment promotionFlowFragment) {
                    return promotionFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<PromotionFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", PromotionFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(RequestsFlowFragment.class, Arrays.asList(new of6<RequestsFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.requests.view.RequestsFlowFragment$$PresentersBinder

            public class a extends pf6<RequestsFlowFragment> {
                @Override // defpackage.pf6
                public final void a(RequestsFlowFragment requestsFlowFragment, ih5 ih5Var) {
                    requestsFlowFragment.presenter = (RequestsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(RequestsFlowFragment requestsFlowFragment) {
                    return requestsFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<RequestsFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", RequestsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(AddChequeFragment.class, Arrays.asList(new of6<AddChequeFragment>() { // from class: com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeFragment$$PresentersBinder

            public class a extends pf6<AddChequeFragment> {
                @Override // defpackage.pf6
                public final void a(AddChequeFragment addChequeFragment, ih5 ih5Var) {
                    addChequeFragment.presenter = (AddChequePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AddChequeFragment addChequeFragment) {
                    return addChequeFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AddChequeFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AddChequePresenter.class));
                return arrayList;
            }
        }));
        map2.put(SpecifyPlaceFlowFragment.class, Arrays.asList(new of6<SpecifyPlaceFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.specifyPlace.view.SpecifyPlaceFlowFragment$$PresentersBinder

            public class a extends pf6<SpecifyPlaceFlowFragment> {
                @Override // defpackage.pf6
                public final void a(SpecifyPlaceFlowFragment specifyPlaceFlowFragment, ih5 ih5Var) {
                    specifyPlaceFlowFragment.presenter = (SpecifyPlaceFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SpecifyPlaceFlowFragment specifyPlaceFlowFragment) {
                    return specifyPlaceFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SpecifyPlaceFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SpecifyPlaceFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TasksFlowFragment.class, Arrays.asList(new of6<TasksFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.tasks.view.TasksFlowFragment$$PresentersBinder

            public class a extends pf6<TasksFlowFragment> {
                @Override // defpackage.pf6
                public final void a(TasksFlowFragment tasksFlowFragment, ih5 ih5Var) {
                    tasksFlowFragment.presenter = (TasksFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TasksFlowFragment tasksFlowFragment) {
                    return tasksFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TasksFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TasksFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(VerificationFlowFragment.class, Arrays.asList(new of6<VerificationFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.verification.view.VerificationFlowFragment$$PresentersBinder

            public class a extends pf6<VerificationFlowFragment> {
                @Override // defpackage.pf6
                public final void a(VerificationFlowFragment verificationFlowFragment, ih5 ih5Var) {
                    verificationFlowFragment.presenter = (VerificationFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(VerificationFlowFragment verificationFlowFragment) {
                    return verificationFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<VerificationFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", VerificationFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(WebviewFlowFragment.class, Arrays.asList(new of6<WebviewFlowFragment>() { // from class: com.warefly.checkscan.presentation.flows.webview.view.WebviewFlowFragment$$PresentersBinder

            public class a extends pf6<WebviewFlowFragment> {
                @Override // defpackage.pf6
                public final void a(WebviewFlowFragment webviewFlowFragment, ih5 ih5Var) {
                    webviewFlowFragment.presenter = (WebviewFlowPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(WebviewFlowFragment webviewFlowFragment) {
                    return webviewFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<WebviewFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", WebviewFlowPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ClarificationGeolocationFragment.class, Arrays.asList(new of6<ClarificationGeolocationFragment>() { // from class: com.warefly.checkscan.presentation.geolocation.view.ClarificationGeolocationFragment$$PresentersBinder

            public class a extends pf6<ClarificationGeolocationFragment> {
                @Override // defpackage.pf6
                public final void a(ClarificationGeolocationFragment clarificationGeolocationFragment, ih5 ih5Var) {
                    clarificationGeolocationFragment.presenter = (ClarificationGeolocationPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ClarificationGeolocationFragment clarificationGeolocationFragment) {
                    return clarificationGeolocationFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ClarificationGeolocationFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ClarificationGeolocationPresenter.class));
                return arrayList;
            }
        }));
        map2.put(SuccessGeolocationFragment.class, Arrays.asList(new of6<SuccessGeolocationFragment>() { // from class: com.warefly.checkscan.presentation.geolocation.view.SuccessGeolocationFragment$$PresentersBinder

            public class a extends pf6<SuccessGeolocationFragment> {
                @Override // defpackage.pf6
                public final void a(SuccessGeolocationFragment successGeolocationFragment, ih5 ih5Var) {
                    successGeolocationFragment.presenter = (SuccessGeolocationPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SuccessGeolocationFragment successGeolocationFragment) {
                    return successGeolocationFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SuccessGeolocationFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SuccessGeolocationPresenter.class));
                return arrayList;
            }
        }));
        map2.put(GiftFragment.class, Arrays.asList(new of6<GiftFragment>() { // from class: com.warefly.checkscan.presentation.gift.view.GiftFragment$$PresentersBinder

            public class a extends pf6<GiftFragment> {
                @Override // defpackage.pf6
                public final void a(GiftFragment giftFragment, ih5 ih5Var) {
                    giftFragment.presenter = (GiftPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(GiftFragment giftFragment) {
                    return giftFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<GiftFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", GiftPresenter.class));
                return arrayList;
            }
        }));
        map2.put(LandingFragment.class, Arrays.asList(new of6<LandingFragment>() { // from class: com.warefly.checkscan.presentation.landing.view.LandingFragment$$PresentersBinder

            public class a extends pf6<LandingFragment> {
                @Override // defpackage.pf6
                public final void a(LandingFragment landingFragment, ih5 ih5Var) {
                    landingFragment.presenter = (LandingPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(LandingFragment landingFragment) {
                    return landingFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<LandingFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", LandingPresenter.class));
                return arrayList;
            }
        }));
        map2.put(MailChangeFragment.class, Arrays.asList(new of6<MailChangeFragment>() { // from class: com.warefly.checkscan.presentation.mailChange.view.MailChangeFragment$$PresentersBinder

            public class a extends pf6<MailChangeFragment> {
                @Override // defpackage.pf6
                public final void a(MailChangeFragment mailChangeFragment, ih5 ih5Var) {
                    mailChangeFragment.mailChangePresenter = (MailChangePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(MailChangeFragment mailChangeFragment) {
                    return mailChangeFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<MailChangeFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("mailChangePresenter", MailChangePresenter.class));
                return arrayList;
            }
        }));
        map2.put(NewBankCardsFragment.class, Arrays.asList(new of6<NewBankCardsFragment>() { // from class: com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsFragment$$PresentersBinder

            public class a extends pf6<NewBankCardsFragment> {
                @Override // defpackage.pf6
                public final void a(NewBankCardsFragment newBankCardsFragment, ih5 ih5Var) {
                    newBankCardsFragment.presenter = (NewBankCardPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(NewBankCardsFragment newBankCardsFragment) {
                    return newBankCardsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<NewBankCardsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", NewBankCardPresenter.class));
                return arrayList;
            }
        }));
        map2.put(NewSearchProductsFragment.class, Arrays.asList(new of6<NewSearchProductsFragment>() { // from class: com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsFragment$$PresentersBinder

            public class a extends pf6<NewSearchProductsFragment> {
                @Override // defpackage.pf6
                public final void a(NewSearchProductsFragment newSearchProductsFragment, ih5 ih5Var) {
                    newSearchProductsFragment.presenter = (NewSearchProductPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(NewSearchProductsFragment newSearchProductsFragment) {
                    return newSearchProductsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<NewSearchProductsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", NewSearchProductPresenter.class));
                return arrayList;
            }
        }));
        map2.put(NotificationsFragment.class, Arrays.asList(new of6<NotificationsFragment>() { // from class: com.warefly.checkscan.presentation.notifications.view.NotificationsFragment$$PresentersBinder

            public class a extends pf6<NotificationsFragment> {
                @Override // defpackage.pf6
                public final void a(NotificationsFragment notificationsFragment, ih5 ih5Var) {
                    notificationsFragment.presenter = (NotificationsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(NotificationsFragment notificationsFragment) {
                    return notificationsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<NotificationsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", NotificationsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CardOfferLandingFragment.class, Arrays.asList(new of6<CardOfferLandingFragment>() { // from class: com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingFragment$$PresentersBinder

            public class a extends pf6<CardOfferLandingFragment> {
                @Override // defpackage.pf6
                public final void a(CardOfferLandingFragment cardOfferLandingFragment, ih5 ih5Var) {
                    cardOfferLandingFragment.presenter = (CardOfferLandingPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CardOfferLandingFragment cardOfferLandingFragment) {
                    return cardOfferLandingFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CardOfferLandingFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CardOfferLandingPresenter.class));
                return arrayList;
            }
        }));
        map2.put(OfferLandingFragment.class, Arrays.asList(new of6<OfferLandingFragment>() { // from class: com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingFragment$$PresentersBinder

            public class a extends pf6<OfferLandingFragment> {
                @Override // defpackage.pf6
                public final void a(OfferLandingFragment offerLandingFragment, ih5 ih5Var) {
                    offerLandingFragment.presenter = (OfferLandingPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OfferLandingFragment offerLandingFragment) {
                    return offerLandingFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OfferLandingFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", OfferLandingPresenter.class));
                return arrayList;
            }
        }));
        map2.put(OnBoardingCardSlideFragment.class, Arrays.asList(new of6<OnBoardingCardSlideFragment>() { // from class: com.warefly.checkscan.presentation.onboardingCard.slides.view.OnBoardingCardSlideFragment$$PresentersBinder

            public class a extends pf6<OnBoardingCardSlideFragment> {
                @Override // defpackage.pf6
                public final void a(OnBoardingCardSlideFragment onBoardingCardSlideFragment, ih5 ih5Var) {
                    onBoardingCardSlideFragment.presenter = (OnBoardingCardSlidePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OnBoardingCardSlideFragment onBoardingCardSlideFragment) {
                    return onBoardingCardSlideFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OnBoardingCardSlideFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", OnBoardingCardSlidePresenter.class));
                return arrayList;
            }
        }));
        map2.put(OnBoardingCardSlidesFragment.class, Arrays.asList(new of6<OnBoardingCardSlidesFragment>() { // from class: com.warefly.checkscan.presentation.onboardingCard.view.OnBoardingCardSlidesFragment$$PresentersBinder

            public class a extends pf6<OnBoardingCardSlidesFragment> {
                @Override // defpackage.pf6
                public final void a(OnBoardingCardSlidesFragment onBoardingCardSlidesFragment, ih5 ih5Var) {
                    onBoardingCardSlidesFragment.presenter = (OnBoardingCardSlidesPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OnBoardingCardSlidesFragment onBoardingCardSlidesFragment) {
                    return onBoardingCardSlidesFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OnBoardingCardSlidesFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", OnBoardingCardSlidesPresenter.class));
                return arrayList;
            }
        }));
        map2.put(OnboardingOneSlideHolderFragment.class, Arrays.asList(new of6<OnboardingOneSlideHolderFragment>() { // from class: com.warefly.checkscan.presentation.onboardingOneSlide.holder.view.OnboardingOneSlideHolderFragment$$PresentersBinder

            public class a extends pf6<OnboardingOneSlideHolderFragment> {
                @Override // defpackage.pf6
                public final void a(OnboardingOneSlideHolderFragment onboardingOneSlideHolderFragment, ih5 ih5Var) {
                    onboardingOneSlideHolderFragment.presenter = (OnboardingOneSlideHolderPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OnboardingOneSlideHolderFragment onboardingOneSlideHolderFragment) {
                    return onboardingOneSlideHolderFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OnboardingOneSlideHolderFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", OnboardingOneSlideHolderPresenter.class));
                return arrayList;
            }
        }));
        map2.put(BankClientVerificationDialog.class, Arrays.asList(new of6<BankClientVerificationDialog>() { // from class: com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationDialog$$PresentersBinder

            public class a extends pf6<BankClientVerificationDialog> {
                @Override // defpackage.pf6
                public final void a(BankClientVerificationDialog bankClientVerificationDialog, ih5 ih5Var) {
                    bankClientVerificationDialog.presenter = (BankVerificationPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(BankClientVerificationDialog bankClientVerificationDialog) {
                    return bankClientVerificationDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<BankClientVerificationDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", BankVerificationPresenter.class));
                return arrayList;
            }
        }));
        map2.put(OnboardingOneSlideFragment.class, Arrays.asList(new of6<OnboardingOneSlideFragment>() { // from class: com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideFragment$$PresentersBinder

            public class a extends pf6<OnboardingOneSlideFragment> {
                @Override // defpackage.pf6
                public final void a(OnboardingOneSlideFragment onboardingOneSlideFragment, ih5 ih5Var) {
                    onboardingOneSlideFragment.presenter = (OnboardingOneSlidePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(OnboardingOneSlideFragment onboardingOneSlideFragment) {
                    return onboardingOneSlideFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<OnboardingOneSlideFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", OnboardingOneSlidePresenter.class));
                return arrayList;
            }
        }));
        map2.put(AllOperationsFragment.class, Arrays.asList(new of6<AllOperationsFragment>() { // from class: com.warefly.checkscan.presentation.operations.allOperations.view.AllOperationsFragment$$PresentersBinder

            public class a extends pf6<AllOperationsFragment> {
                @Override // defpackage.pf6
                public final void a(AllOperationsFragment allOperationsFragment, ih5 ih5Var) {
                    allOperationsFragment.presenter = (AllOperationsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AllOperationsFragment allOperationsFragment) {
                    return allOperationsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AllOperationsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AllOperationsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CatalogCardOperationsFragment.class, Arrays.asList(new of6<CatalogCardOperationsFragment>() { // from class: com.warefly.checkscan.presentation.operations.base.CatalogCardOperationsFragment$$PresentersBinder

            public class a extends pf6<CatalogCardOperationsFragment> {
                @Override // defpackage.pf6
                public final void a(CatalogCardOperationsFragment catalogCardOperationsFragment, ih5 ih5Var) {
                    catalogCardOperationsFragment.catalogCardOperationsPresenter = (CatalogCardOperationsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CatalogCardOperationsFragment catalogCardOperationsFragment) {
                    return catalogCardOperationsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CatalogCardOperationsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("catalogCardOperationsPresenter", CatalogCardOperationsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(PhoneChangeFragment.class, Arrays.asList(new of6<PhoneChangeFragment>() { // from class: com.warefly.checkscan.presentation.phoneChange.view.PhoneChangeFragment$$PresentersBinder

            public class a extends pf6<PhoneChangeFragment> {
                @Override // defpackage.pf6
                public final void a(PhoneChangeFragment phoneChangeFragment, ih5 ih5Var) {
                    phoneChangeFragment.phoneChangePresenter = (PhoneChangePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(PhoneChangeFragment phoneChangeFragment) {
                    return phoneChangeFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<PhoneChangeFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("phoneChangePresenter", PhoneChangePresenter.class));
                return arrayList;
            }
        }));
        map2.put(ProfileFlowFragment.class, Arrays.asList(new of6<ProfileFlowFragment>() { // from class: com.warefly.checkscan.presentation.profile.view.ProfileFlowFragment$$PresentersBinder

            public class a extends pf6<ProfileFlowFragment> {
                @Override // defpackage.pf6
                public final void a(ProfileFlowFragment profileFlowFragment, ih5 ih5Var) {
                    profileFlowFragment.presenter = (ProfilePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ProfileFlowFragment profileFlowFragment) {
                    return profileFlowFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ProfileFlowFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ProfilePresenter.class));
                return arrayList;
            }
        }));
        map2.put(CalendarSpinnerBottomSheetDialog.class, Arrays.asList(new of6<CalendarSpinnerBottomSheetDialog>() { // from class: com.warefly.checkscan.presentation.qrHand.calendarDialog.view.CalendarSpinnerBottomSheetDialog$$PresentersBinder

            public class a extends pf6<CalendarSpinnerBottomSheetDialog> {
                @Override // defpackage.pf6
                public final void a(CalendarSpinnerBottomSheetDialog calendarSpinnerBottomSheetDialog, ih5 ih5Var) {
                    calendarSpinnerBottomSheetDialog.presenter = (CalendarSpinnerPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CalendarSpinnerBottomSheetDialog calendarSpinnerBottomSheetDialog) {
                    return calendarSpinnerBottomSheetDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CalendarSpinnerBottomSheetDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CalendarSpinnerPresenter.class));
                return arrayList;
            }
        }));
        map2.put(HowFindDataInChequeFragment.class, Arrays.asList(new of6<HowFindDataInChequeFragment>() { // from class: com.warefly.checkscan.presentation.qrHand.howFindData.view.HowFindDataInChequeFragment$$PresentersBinder

            public class a extends pf6<HowFindDataInChequeFragment> {
                @Override // defpackage.pf6
                public final void a(HowFindDataInChequeFragment howFindDataInChequeFragment, ih5 ih5Var) {
                    howFindDataInChequeFragment.presenter = (HowFindDataInChequePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(HowFindDataInChequeFragment howFindDataInChequeFragment) {
                    return howFindDataInChequeFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<HowFindDataInChequeFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", HowFindDataInChequePresenter.class));
                return arrayList;
            }
        }));
        map2.put(QrHandFragment.class, Arrays.asList(new of6<QrHandFragment>() { // from class: com.warefly.checkscan.presentation.qrHand.view.QrHandFragment$$PresentersBinder

            public class a extends pf6<QrHandFragment> {
                @Override // defpackage.pf6
                public final void a(QrHandFragment qrHandFragment, ih5 ih5Var) {
                    qrHandFragment.presenter = (QrHandPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(QrHandFragment qrHandFragment) {
                    return qrHandFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<QrHandFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", QrHandPresenter.class));
                return arrayList;
            }
        }));
        map2.put(LoadingSplashFragment.class, Arrays.asList(new of6<LoadingSplashFragment>() { // from class: com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashFragment$$PresentersBinder

            public class a extends pf6<LoadingSplashFragment> {
                @Override // defpackage.pf6
                public final void a(LoadingSplashFragment loadingSplashFragment, ih5 ih5Var) {
                    loadingSplashFragment.presenter = (LoadingSplashPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(LoadingSplashFragment loadingSplashFragment) {
                    return loadingSplashFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<LoadingSplashFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", LoadingSplashPresenter.class));
                return arrayList;
            }
        }));
        map2.put(QueueFragment.class, Arrays.asList(new of6<QueueFragment>() { // from class: com.warefly.checkscan.presentation.queue.view.QueueFragment$$PresentersBinder

            public class a extends pf6<QueueFragment> {
                @Override // defpackage.pf6
                public final void a(QueueFragment queueFragment, ih5 ih5Var) {
                    queueFragment.presenter = (QueuePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(QueueFragment queueFragment) {
                    return queueFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<QueueFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", QueuePresenter.class));
                return arrayList;
            }
        }));
        map2.put(RebindCardDialog.class, Arrays.asList(new of6<RebindCardDialog>() { // from class: com.warefly.checkscan.presentation.rebindCard.view.RebindCardDialog$$PresentersBinder

            public class a extends pf6<RebindCardDialog> {
                @Override // defpackage.pf6
                public final void a(RebindCardDialog rebindCardDialog, ih5 ih5Var) {
                    rebindCardDialog.presenter = (RebindCardPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(RebindCardDialog rebindCardDialog) {
                    return rebindCardDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<RebindCardDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", RebindCardPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ReplenishmentCardFragment.class, Arrays.asList(new of6<ReplenishmentCardFragment>() { // from class: com.warefly.checkscan.presentation.replenishmentCard.view.ReplenishmentCardFragment$$PresentersBinder

            public class a extends pf6<ReplenishmentCardFragment> {
                @Override // defpackage.pf6
                public final void a(ReplenishmentCardFragment replenishmentCardFragment, ih5 ih5Var) {
                    replenishmentCardFragment.presenter = (ReplenishmentCardPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ReplenishmentCardFragment replenishmentCardFragment) {
                    return replenishmentCardFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ReplenishmentCardFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ReplenishmentCardPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ScannerInfoFragment.class, Arrays.asList(new of6<ScannerInfoFragment>() { // from class: com.warefly.checkscan.presentation.scanner.info.view.ScannerInfoFragment$$PresentersBinder

            public class a extends pf6<ScannerInfoFragment> {
                @Override // defpackage.pf6
                public final void a(ScannerInfoFragment scannerInfoFragment, ih5 ih5Var) {
                    scannerInfoFragment.presenter = (ScannerInfoPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ScannerInfoFragment scannerInfoFragment) {
                    return scannerInfoFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ScannerInfoFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ScannerInfoPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ScannerOnboardingFragment.class, Arrays.asList(new of6<ScannerOnboardingFragment>() { // from class: com.warefly.checkscan.presentation.scanner.onboarding.view.ScannerOnboardingFragment$$PresentersBinder

            public class a extends pf6<ScannerOnboardingFragment> {
                @Override // defpackage.pf6
                public final void a(ScannerOnboardingFragment scannerOnboardingFragment, ih5 ih5Var) {
                    scannerOnboardingFragment.presenter = (ScannerOnboardingPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ScannerOnboardingFragment scannerOnboardingFragment) {
                    return scannerOnboardingFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ScannerOnboardingFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ScannerOnboardingPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ScannerOnboardingGalleryFragment.class, Arrays.asList(new of6<ScannerOnboardingGalleryFragment>() { // from class: com.warefly.checkscan.presentation.scanner.onboardingGallery.view.ScannerOnboardingGalleryFragment$$PresentersBinder

            public class a extends pf6<ScannerOnboardingGalleryFragment> {
                @Override // defpackage.pf6
                public final void a(ScannerOnboardingGalleryFragment scannerOnboardingGalleryFragment, ih5 ih5Var) {
                    scannerOnboardingGalleryFragment.presenter = (ScannerOnboardingGalleryPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ScannerOnboardingGalleryFragment scannerOnboardingGalleryFragment) {
                    return scannerOnboardingGalleryFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ScannerOnboardingGalleryFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ScannerOnboardingGalleryPresenter.class));
                return arrayList;
            }
        }));
        map2.put(ScannerFragment.class, Arrays.asList(new of6<ScannerFragment>() { // from class: com.warefly.checkscan.presentation.scanner.view.ScannerFragment$$PresentersBinder

            public class a extends pf6<ScannerFragment> {
                @Override // defpackage.pf6
                public final void a(ScannerFragment scannerFragment, ih5 ih5Var) {
                    scannerFragment.presenter = (ScannerPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(ScannerFragment scannerFragment) {
                    return scannerFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<ScannerFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", ScannerPresenter.class));
                return arrayList;
            }
        }));
        map2.put(StatisticsPageFragment.class, Arrays.asList(new of6<StatisticsPageFragment>() { // from class: com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageFragment$$PresentersBinder

            public class a extends pf6<StatisticsPageFragment> {
                @Override // defpackage.pf6
                public final void a(StatisticsPageFragment statisticsPageFragment, ih5 ih5Var) {
                    statisticsPageFragment.presenter = (StatisticsPagePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(StatisticsPageFragment statisticsPageFragment) {
                    return statisticsPageFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<StatisticsPageFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", StatisticsPagePresenter.class));
                return arrayList;
            }
        }));
        map2.put(StatisticsFragment.class, Arrays.asList(new of6<StatisticsFragment>() { // from class: com.warefly.checkscan.presentation.statistics.view.StatisticsFragment$$PresentersBinder

            public class a extends pf6<StatisticsFragment> {
                @Override // defpackage.pf6
                public final void a(StatisticsFragment statisticsFragment, ih5 ih5Var) {
                    statisticsFragment.presenter = (StatisticsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(StatisticsFragment statisticsFragment) {
                    return statisticsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<StatisticsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", StatisticsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(AgreementDialog.class, Arrays.asList(new of6<AgreementDialog>() { // from class: com.warefly.checkscan.presentation.stock.view.AgreementDialog$$PresentersBinder

            public class a extends pf6<AgreementDialog> {
                @Override // defpackage.pf6
                public final void a(AgreementDialog agreementDialog, ih5 ih5Var) {
                    agreementDialog.presenter = (AgreementPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(AgreementDialog agreementDialog) {
                    return agreementDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<AgreementDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", AgreementPresenter.class));
                return arrayList;
            }
        }));
        map2.put(SuccessFragment.class, Arrays.asList(new of6<SuccessFragment>() { // from class: com.warefly.checkscan.presentation.success.view.SuccessFragment$$PresentersBinder

            public class a extends pf6<SuccessFragment> {
                @Override // defpackage.pf6
                public final void a(SuccessFragment successFragment, ih5 ih5Var) {
                    successFragment.presenter = (SuccessPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(SuccessFragment successFragment) {
                    return successFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<SuccessFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", SuccessPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CheckboxTaskDetailsFragment.class, Arrays.asList(new of6<CheckboxTaskDetailsFragment>() { // from class: com.warefly.checkscan.presentation.tasks.checkbox.view.CheckboxTaskDetailsFragment$$PresentersBinder

            public class a extends pf6<CheckboxTaskDetailsFragment> {
                @Override // defpackage.pf6
                public final void a(CheckboxTaskDetailsFragment checkboxTaskDetailsFragment, ih5 ih5Var) {
                    checkboxTaskDetailsFragment.presenter = (CheckboxTaskDetailsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CheckboxTaskDetailsFragment checkboxTaskDetailsFragment) {
                    return checkboxTaskDetailsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CheckboxTaskDetailsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CheckboxTaskDetailsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CheckboxTaskStepsDetailsFragment.class, Arrays.asList(new of6<CheckboxTaskStepsDetailsFragment>() { // from class: com.warefly.checkscan.presentation.tasks.checkboxSteps.view.CheckboxTaskStepsDetailsFragment$$PresentersBinder

            public class a extends pf6<CheckboxTaskStepsDetailsFragment> {
                @Override // defpackage.pf6
                public final void a(CheckboxTaskStepsDetailsFragment checkboxTaskStepsDetailsFragment, ih5 ih5Var) {
                    checkboxTaskStepsDetailsFragment.presenter = (CheckboxTaskStepsDetailsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CheckboxTaskStepsDetailsFragment checkboxTaskStepsDetailsFragment) {
                    return checkboxTaskStepsDetailsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CheckboxTaskStepsDetailsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CheckboxTaskStepsDetailsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(CompletedTasksFragment.class, Arrays.asList(new of6<CompletedTasksFragment>() { // from class: com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksFragment$$PresentersBinder

            public class a extends pf6<CompletedTasksFragment> {
                @Override // defpackage.pf6
                public final void a(CompletedTasksFragment completedTasksFragment, ih5 ih5Var) {
                    completedTasksFragment.presenter = (CompletedTasksPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(CompletedTasksFragment completedTasksFragment) {
                    return completedTasksFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<CompletedTasksFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", CompletedTasksPresenter.class));
                return arrayList;
            }
        }));
        map2.put(DailyTaskFragment.class, Arrays.asList(new of6<DailyTaskFragment>() { // from class: com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskFragment$$PresentersBinder

            public class a extends pf6<DailyTaskFragment> {
                @Override // defpackage.pf6
                public final void a(DailyTaskFragment dailyTaskFragment, ih5 ih5Var) {
                    dailyTaskFragment.presenter = (DailyTaskPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(DailyTaskFragment dailyTaskFragment) {
                    return dailyTaskFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<DailyTaskFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", DailyTaskPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TaskErrorBottomSheet.class, Arrays.asList(new of6<TaskErrorBottomSheet>() { // from class: com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorBottomSheet$$PresentersBinder

            public class a extends pf6<TaskErrorBottomSheet> {
                @Override // defpackage.pf6
                public final void a(TaskErrorBottomSheet taskErrorBottomSheet, ih5 ih5Var) {
                    taskErrorBottomSheet.presenter = (TaskErrorPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TaskErrorBottomSheet taskErrorBottomSheet) {
                    return taskErrorBottomSheet.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TaskErrorBottomSheet>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TaskErrorPresenter.class));
                return arrayList;
            }
        }));
        map2.put(NoAttemptsDialog.class, Arrays.asList(new of6<NoAttemptsDialog>() { // from class: com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view.NoAttemptsDialog$$PresentersBinder

            public class a extends pf6<NoAttemptsDialog> {
                @Override // defpackage.pf6
                public final void a(NoAttemptsDialog noAttemptsDialog, ih5 ih5Var) {
                    noAttemptsDialog.presenter = (NoAttemptsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(NoAttemptsDialog noAttemptsDialog) {
                    return noAttemptsDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<NoAttemptsDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", NoAttemptsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(DailyTaskResultDialog.class, Arrays.asList(new of6<DailyTaskResultDialog>() { // from class: com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultDialog$$PresentersBinder

            public class a extends pf6<DailyTaskResultDialog> {
                @Override // defpackage.pf6
                public final void a(DailyTaskResultDialog dailyTaskResultDialog, ih5 ih5Var) {
                    dailyTaskResultDialog.presenter = (DailyTaskResultPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(DailyTaskResultDialog dailyTaskResultDialog) {
                    return dailyTaskResultDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<DailyTaskResultDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", DailyTaskResultPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TaskSuccessBottomSheet.class, Arrays.asList(new of6<TaskSuccessBottomSheet>() { // from class: com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessBottomSheet$$PresentersBinder

            public class a extends pf6<TaskSuccessBottomSheet> {
                @Override // defpackage.pf6
                public final void a(TaskSuccessBottomSheet taskSuccessBottomSheet, ih5 ih5Var) {
                    taskSuccessBottomSheet.presenter = (TaskSuccessPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TaskSuccessBottomSheet taskSuccessBottomSheet) {
                    return taskSuccessBottomSheet.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TaskSuccessBottomSheet>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TaskSuccessPresenter.class));
                return arrayList;
            }
        }));
        map2.put(GroupedTasksFragment.class, Arrays.asList(new of6<GroupedTasksFragment>() { // from class: com.warefly.checkscan.presentation.tasks.grouped.view.GroupedTasksFragment$$PresentersBinder

            public class a extends pf6<GroupedTasksFragment> {
                @Override // defpackage.pf6
                public final void a(GroupedTasksFragment groupedTasksFragment, ih5 ih5Var) {
                    groupedTasksFragment.presenter = (GroupedTasksPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(GroupedTasksFragment groupedTasksFragment) {
                    return groupedTasksFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<GroupedTasksFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", GroupedTasksPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TasksFragment.class, Arrays.asList(new of6<TasksFragment>() { // from class: com.warefly.checkscan.presentation.tasks.main.view.TasksFragment$$PresentersBinder

            public class a extends pf6<TasksFragment> {
                @Override // defpackage.pf6
                public final void a(TasksFragment tasksFragment, ih5 ih5Var) {
                    tasksFragment.presenter = (TasksPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TasksFragment tasksFragment) {
                    return tasksFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TasksFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TasksPresenter.class));
                return arrayList;
            }
        }));
        map2.put(MultiTaskDetailsFragment.class, Arrays.asList(new of6<MultiTaskDetailsFragment>() { // from class: com.warefly.checkscan.presentation.tasks.multiTaskDetails.view.MultiTaskDetailsFragment$$PresentersBinder

            public class a extends pf6<MultiTaskDetailsFragment> {
                @Override // defpackage.pf6
                public final void a(MultiTaskDetailsFragment multiTaskDetailsFragment, ih5 ih5Var) {
                    multiTaskDetailsFragment.presenter = (MultiTaskDetailsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(MultiTaskDetailsFragment multiTaskDetailsFragment) {
                    return multiTaskDetailsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<MultiTaskDetailsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", MultiTaskDetailsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(PromocodeTaskDetailsFragment.class, Arrays.asList(new of6<PromocodeTaskDetailsFragment>() { // from class: com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsFragment$$PresentersBinder

            public class a extends pf6<PromocodeTaskDetailsFragment> {
                @Override // defpackage.pf6
                public final void a(PromocodeTaskDetailsFragment promocodeTaskDetailsFragment, ih5 ih5Var) {
                    promocodeTaskDetailsFragment.presenter = (PromocodeTaskDetailsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(PromocodeTaskDetailsFragment promocodeTaskDetailsFragment) {
                    return promocodeTaskDetailsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<PromocodeTaskDetailsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", PromocodeTaskDetailsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(RewardedMultiTaskDetailsFragment.class, Arrays.asList(new of6<RewardedMultiTaskDetailsFragment>() { // from class: com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsFragment$$PresentersBinder

            public class a extends pf6<RewardedMultiTaskDetailsFragment> {
                @Override // defpackage.pf6
                public final void a(RewardedMultiTaskDetailsFragment rewardedMultiTaskDetailsFragment, ih5 ih5Var) {
                    rewardedMultiTaskDetailsFragment.presenter = (RewardedMultiTaskDetailsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(RewardedMultiTaskDetailsFragment rewardedMultiTaskDetailsFragment) {
                    return rewardedMultiTaskDetailsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<RewardedMultiTaskDetailsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", RewardedMultiTaskDetailsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(TaskDetailsFragment.class, Arrays.asList(new of6<TaskDetailsFragment>() { // from class: com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsFragment$$PresentersBinder

            public class a extends pf6<TaskDetailsFragment> {
                @Override // defpackage.pf6
                public final void a(TaskDetailsFragment taskDetailsFragment, ih5 ih5Var) {
                    taskDetailsFragment.presenter = (TaskDetailsPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(TaskDetailsFragment taskDetailsFragment) {
                    return taskDetailsFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<TaskDetailsFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", TaskDetailsPresenter.class));
                return arrayList;
            }
        }));
        map2.put(UpdateFragment.class, Arrays.asList(new of6<UpdateFragment>() { // from class: com.warefly.checkscan.presentation.update.view.UpdateFragment$$PresentersBinder

            public class a extends pf6<UpdateFragment> {
                @Override // defpackage.pf6
                public final void a(UpdateFragment updateFragment, ih5 ih5Var) {
                    updateFragment.presenter = (UpdatePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(UpdateFragment updateFragment) {
                    return updateFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<UpdateFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", UpdatePresenter.class));
                return arrayList;
            }
        }));
        map2.put(UpridWebFullScreenDialog.class, Arrays.asList(new of6<UpridWebFullScreenDialog>() { // from class: com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog$$PresentersBinder

            public class a extends pf6<UpridWebFullScreenDialog> {
                @Override // defpackage.pf6
                public final void a(UpridWebFullScreenDialog upridWebFullScreenDialog, ih5 ih5Var) {
                    upridWebFullScreenDialog.presenter = (UpridWebPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(UpridWebFullScreenDialog upridWebFullScreenDialog) {
                    return upridWebFullScreenDialog.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<UpridWebFullScreenDialog>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", UpridWebPresenter.class));
                return arrayList;
            }
        }));
        map2.put(VerificationCardPhoneFragment.class, Arrays.asList(new of6<VerificationCardPhoneFragment>() { // from class: com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneFragment$$PresentersBinder

            public class a extends pf6<VerificationCardPhoneFragment> {
                @Override // defpackage.pf6
                public final void a(VerificationCardPhoneFragment verificationCardPhoneFragment, ih5 ih5Var) {
                    verificationCardPhoneFragment.presenter = (VerificationCardPhonePresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(VerificationCardPhoneFragment verificationCardPhoneFragment) {
                    return verificationCardPhoneFragment.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<VerificationCardPhoneFragment>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", VerificationCardPhonePresenter.class));
                return arrayList;
            }
        }));
        map2.put(WebViewReplenishmentActivity.class, Arrays.asList(new of6<WebViewReplenishmentActivity>() { // from class: com.warefly.checkscan.presentation.webview.WebViewReplenishmentActivity$$PresentersBinder

            public class a extends pf6<WebViewReplenishmentActivity> {
                @Override // defpackage.pf6
                public final void a(WebViewReplenishmentActivity webViewReplenishmentActivity, ih5 ih5Var) {
                    webViewReplenishmentActivity.presenter = (WebViewReplenishmentPresenter) ih5Var;
                }

                @Override // defpackage.pf6
                public final ih5 b(WebViewReplenishmentActivity webViewReplenishmentActivity) {
                    return webViewReplenishmentActivity.providePresenter();
                }
            }

            @Override // defpackage.of6
            public List<pf6<WebViewReplenishmentActivity>> getPresenterFields() {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new a("presenter", WebViewReplenishmentPresenter.class));
                return arrayList;
            }
        }));
        HashMap map3 = new HashMap();
        c = map3;
        map3.put(i9.class, new i9());
        map3.put(j9.class, new j9());
        map3.put(k9.class, new k9());
        map3.put(hx5.class, new hx5());
        map3.put(a28.class, new a28());
        map.putAll(je5.a);
        map2.putAll(je5.b);
        map3.putAll(je5.c);
        map.putAll(ke5.a);
        map2.putAll(ke5.b);
        map3.putAll(ke5.c);
        map.putAll(le5.a);
        map2.putAll(le5.b);
        map3.putAll(le5.c);
        map.putAll(me5.a);
        map2.putAll(me5.b);
        map3.putAll(me5.c);
        map.putAll(ne5.a);
        map2.putAll(ne5.b);
        map3.putAll(ne5.c);
        map.putAll(oe5.a);
        map2.putAll(oe5.b);
        map3.putAll(oe5.c);
        map.putAll(pe5.a);
        map2.putAll(pe5.b);
        map3.putAll(pe5.c);
        map.putAll(qe5.a);
        map2.putAll(qe5.b);
        map3.putAll(qe5.c);
        map.putAll(re5.a);
        map2.putAll(re5.b);
        map3.putAll(re5.c);
    }
}
