.class public final Landroidx/activity/SystemBarStyle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/SystemBarStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/SystemBarStyle$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p0}, Landroidx/activity/SystemBarStyle$Companion;->auto$lambda$0(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public static synthetic auto$default(Landroidx/activity/SystemBarStyle$Companion;IILnl3;ILjava/lang/Object;)Landroidx/activity/SystemBarStyle;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lhf;

    const/4 p4, 0x5

    invoke-direct {p3, p4}, Lhf;-><init>(I)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/activity/SystemBarStyle$Companion;->auto(IILnl3;)Landroidx/activity/SystemBarStyle;

    move-result-object p0

    return-object p0
.end method

.method private static final auto$lambda$0(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p0}, Landroidx/activity/SystemBarStyle$Companion;->light$lambda$0(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p0}, Landroidx/activity/SystemBarStyle$Companion;->dark$lambda$0(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method private static final dark$lambda$0(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method private static final light$lambda$0(Landroid/content/res/Resources;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final auto(II)Landroidx/activity/SystemBarStyle;
    .locals 6

    .line 14
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/activity/SystemBarStyle$Companion;->auto$default(Landroidx/activity/SystemBarStyle$Companion;IILnl3;ILjava/lang/Object;)Landroidx/activity/SystemBarStyle;

    move-result-object p0

    return-object p0
.end method

.method public final auto(IILnl3;)Landroidx/activity/SystemBarStyle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lnl3<",
            "-",
            "Landroid/content/res/Resources;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/activity/SystemBarStyle;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/activity/SystemBarStyle;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/activity/SystemBarStyle;-><init>(IIILnl3;Ljh2;)V

    return-object v0
.end method

.method public final dark(I)Landroidx/activity/SystemBarStyle;
    .locals 6

    new-instance v0, Landroidx/activity/SystemBarStyle;

    new-instance v4, Ldt3;

    const/4 p0, 0x2

    invoke-direct {v4, p0}, Ldt3;-><init>(I)V

    const/4 v5, 0x0

    const/4 v3, 0x2

    move v2, p1

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/activity/SystemBarStyle;-><init>(IIILnl3;Ljh2;)V

    return-object v0
.end method

.method public final light(II)Landroidx/activity/SystemBarStyle;
    .locals 6

    new-instance v0, Landroidx/activity/SystemBarStyle;

    new-instance v4, Lct3;

    const/4 p0, 0x1

    invoke-direct {v4, p0}, Lct3;-><init>(I)V

    const/4 v5, 0x0

    const/4 v3, 0x1

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/activity/SystemBarStyle;-><init>(IIILnl3;Ljh2;)V

    return-object v0
.end method
