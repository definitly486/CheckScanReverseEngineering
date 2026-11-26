.class public final Lse5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lse5;->a:Ljava/util/HashMap;

    new-instance v1, Lc60;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lc60;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Luv3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Luv3;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh9;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lh9;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lib;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lib;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc60;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lc60;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lbp6;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbp6;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li5;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Li5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lfb1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lfb1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lde7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lde7;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lwq0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lwq0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li61;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Li61;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lkq3;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lkq3;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li90;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Li90;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li62;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Li62;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Llj4;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Llj4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk71;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ly32;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lra3;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls42;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ls42;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/coupons/presenter/CouponsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrc;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lrc;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldr0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ldr0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lxw5;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lyw5;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj71;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lj71;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Len5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Len5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lex5;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lex5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Las0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Las0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ltc;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ltc;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lwk0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lwk0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lxm5;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lxm5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ltc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ltc;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lkj1;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lvt0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lvt0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ltd1;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lye1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lye1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldr0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ldr0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lbq4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbq4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ly8;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ly8;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldi1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ldi1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhd8;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li62;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Li62;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lv54;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lv54;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrc;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lrc;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lsg9;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lvt0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lvt0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Li5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/account/presenter/AccountPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lwq0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lwq0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/bonuses/presenter/BonusesInnerFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li61;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Li61;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/cashback/presenter/CashbackPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ley0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ley0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ltb;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ltb;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/changePhone/presenter/ChangePhoneFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lwq0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lwq0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrm1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrm1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lvt0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lvt0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj71;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lj71;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls42;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ls42;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lq53;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lq53;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/favorite/presenter/FavoriteFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcc3;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/firstopen/presenter/FirstOpenPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lgq3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgq3;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/gift/presenter/GiftFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lna4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lna4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/issueCard/presenter/IssueCardFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Len5;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Len5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/offerLanding/presenter/OfferLandingFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc60;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lc60;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/promotions/presenter/PromotionFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lex5;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lex5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr8;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lkq3;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkq3;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lls4;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lls4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/tasks/presenter/TasksFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lq53;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lq53;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/verification/presenter/VerificationFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljh9;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/flows/webview/presenter/WebviewFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lwk1;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc60;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lc60;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lkq3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkq3;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li90;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Li90;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lry4;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lxm5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lxm5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lgn5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgn5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc60;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lc60;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc60;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lc60;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lvb0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lvb0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls42;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ls42;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lgq3;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgq3;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lzw5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lzw5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lvb0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lvb0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankVerificationPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lex5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lex5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/presenter/OnboardingOneSlidePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrc;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Las0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Las0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ln76;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrm1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lrm1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ley0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ley0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/presenter/CalendarSpinnerPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrc;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lrc;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/qrHand/howFindData/presenter/HowFindDataInChequePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj71;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lj71;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lls4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lls4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lew6;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lbq4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbq4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lbp6;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbp6;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/replenishmentCard/presenter/ReplenishmentCardPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lyd7;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lde7;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lde7;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lce7;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/presenter/ScannerOnboardingGalleryPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lac1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lac1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, La88;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, La88;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lwk0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lwk0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ltb;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ltb;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/stock/presenter/AgreementPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lfb1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lfb1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/success/presenter/SuccessPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lfb1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfb1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lac1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lac1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ler1;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk82;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lta0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lta0;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/presenter/TaskErrorPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lib;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lib;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/presenter/NoAttemptsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lib;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lib;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/presenter/DailyTaskResultPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lgn5;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgn5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lts3;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Luv3;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Luv3;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Luf5;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls42;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ls42;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li90;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Li90;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/presenter/RewardedMultiTaskDetailsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lxm5;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lxm5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/taskDetails/presenter/TaskDetailsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lv54;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lv54;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/update/presenter/UpdatePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldv;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ldv;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li5;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Li5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lfb1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lfb1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lse5;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/account/view/AccountFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/account/view/AccountFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/account/view/AccountFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/bonuses/view/BonusesInnerFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/bonuses/view/BonusesInnerFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/bonuses/view/BonusesInnerFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/cashback/view/CashbackFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/cashback/view/CashbackFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/cashback/view/CashbackFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/catalog/view/CatalogFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/catalog/view/CatalogFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/catalog/view/CatalogFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/changePhone/view/ChangePhoneFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/changePhone/view/ChangePhoneFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/changePhone/view/ChangePhoneFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/electrocheques/view/ElectroChequesFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/electrocheques/view/ElectroChequesFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/electrocheques/view/ElectroChequesFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/favorite/view/FavoriteFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/favorite/view/FavoriteFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/favorite/view/FavoriteFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/firstopen/view/FirstOpenFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/firstopen/view/FirstOpenFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/firstopen/view/FirstOpenFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/gift/view/GiftFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/gift/view/GiftFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/gift/view/GiftFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/issueCard/view/IssueCardFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/issueCard/view/IssueCardFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/issueCard/view/IssueCardFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/offerLanding/view/OfferLandingFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/offerLanding/view/OfferLandingFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/offerLanding/view/OfferLandingFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/promotions/view/PromotionFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/promotions/view/PromotionFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/promotions/view/PromotionFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/tasks/view/TasksFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/geolocation/view/SuccessGeolocationFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/geolocation/view/SuccessGeolocationFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/geolocation/view/SuccessGeolocationFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerBottomSheetDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerBottomSheetDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/qrHand/calendarDialog/view/CalendarSpinnerBottomSheetDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/qrHand/howFindData/view/HowFindDataInChequeFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/qrHand/howFindData/view/HowFindDataInChequeFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/qrHand/howFindData/view/HowFindDataInChequeFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/replenishmentCard/view/ReplenishmentCardFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/replenishmentCard/view/ReplenishmentCardFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/replenishmentCard/view/ReplenishmentCardFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/success/view/SuccessFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/success/view/SuccessFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/success/view/SuccessFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/dialogs/error/view/TaskErrorBottomSheet;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/view/MultiTaskDetailsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/view/MultiTaskDetailsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/view/MultiTaskDetailsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/rewardedMultiTask/view/RewardedMultiTaskDetailsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/tasks/taskDetails/view/TaskDetailsFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity$$PresentersBinder;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity$$PresentersBinder;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lse5;->c:Ljava/util/HashMap;

    new-instance v3, Li9;

    invoke-direct {v3}, Li9;-><init>()V

    const-class v4, Li9;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lj9;

    invoke-direct {v3}, Lj9;-><init>()V

    const-class v4, Lj9;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lk9;

    invoke-direct {v3}, Lk9;-><init>()V

    const-class v4, Lk9;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lhx5;

    invoke-direct {v3}, Lhx5;-><init>()V

    const-class v4, Lhx5;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, La28;

    invoke-direct {v3}, La28;-><init>()V

    const-class v4, La28;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lje5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lje5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lje5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lke5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lke5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lke5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lle5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lle5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lle5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lme5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lme5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lme5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lne5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lne5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lne5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Loe5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Loe5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Loe5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lpe5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lpe5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lpe5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lqe5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lqe5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lqe5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lre5;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v0, Lre5;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v0, Lre5;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method
