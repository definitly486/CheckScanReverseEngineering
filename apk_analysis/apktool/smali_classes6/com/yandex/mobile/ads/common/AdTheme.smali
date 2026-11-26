.class public final enum Lcom/yandex/mobile/ads/common/AdTheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mobile/ads/common/AdTheme;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DARK:Lcom/yandex/mobile/ads/common/AdTheme;

.field public static final enum LIGHT:Lcom/yandex/mobile/ads/common/AdTheme;

.field private static final synthetic c:[Lcom/yandex/mobile/ads/common/AdTheme;

.field private static final synthetic d:Lg03;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/common/AdTheme;

    const/4 v1, 0x0

    const-string v2, "light"

    const-string v3, "LIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/mobile/ads/common/AdTheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/common/AdTheme;->LIGHT:Lcom/yandex/mobile/ads/common/AdTheme;

    new-instance v1, Lcom/yandex/mobile/ads/common/AdTheme;

    const/4 v2, 0x1

    const-string v3, "dark"

    const-string v4, "DARK"

    invoke-direct {v1, v4, v2, v3}, Lcom/yandex/mobile/ads/common/AdTheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/yandex/mobile/ads/common/AdTheme;->DARK:Lcom/yandex/mobile/ads/common/AdTheme;

    filled-new-array {v0, v1}, [Lcom/yandex/mobile/ads/common/AdTheme;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/common/AdTheme;->c:[Lcom/yandex/mobile/ads/common/AdTheme;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lcom/yandex/mobile/ads/common/AdTheme;->d:Lg03;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/common/AdTheme;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/common/AdTheme;
    .locals 1

    const-class v0, Lcom/yandex/mobile/ads/common/AdTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/common/AdTheme;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mobile/ads/common/AdTheme;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/common/AdTheme;->c:[Lcom/yandex/mobile/ads/common/AdTheme;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/common/AdTheme;

    return-object v0
.end method
