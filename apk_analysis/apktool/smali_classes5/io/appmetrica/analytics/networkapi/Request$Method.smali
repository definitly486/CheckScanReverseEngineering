.class public final enum Lio/appmetrica/analytics/networkapi/Request$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/networkapi/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/appmetrica/analytics/networkapi/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lio/appmetrica/analytics/networkapi/Request$Method;

.field public static final enum GET:Lio/appmetrica/analytics/networkapi/Request$Method;

.field public static final enum HEAD:Lio/appmetrica/analytics/networkapi/Request$Method;

.field public static final enum OPTIONS:Lio/appmetrica/analytics/networkapi/Request$Method;

.field public static final enum PATCH:Lio/appmetrica/analytics/networkapi/Request$Method;

.field public static final enum POST:Lio/appmetrica/analytics/networkapi/Request$Method;

.field public static final enum PUT:Lio/appmetrica/analytics/networkapi/Request$Method;

.field private static final synthetic b:[Lio/appmetrica/analytics/networkapi/Request$Method;

.field private static final synthetic c:Lg03;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/appmetrica/analytics/networkapi/Request$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lio/appmetrica/analytics/networkapi/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/networkapi/Request$Method;->GET:Lio/appmetrica/analytics/networkapi/Request$Method;

    new-instance v1, Lio/appmetrica/analytics/networkapi/Request$Method;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/appmetrica/analytics/networkapi/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/appmetrica/analytics/networkapi/Request$Method;->POST:Lio/appmetrica/analytics/networkapi/Request$Method;

    new-instance v2, Lio/appmetrica/analytics/networkapi/Request$Method;

    const-string v3, "HEAD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lio/appmetrica/analytics/networkapi/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/appmetrica/analytics/networkapi/Request$Method;->HEAD:Lio/appmetrica/analytics/networkapi/Request$Method;

    new-instance v3, Lio/appmetrica/analytics/networkapi/Request$Method;

    const-string v4, "PUT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lio/appmetrica/analytics/networkapi/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/appmetrica/analytics/networkapi/Request$Method;->PUT:Lio/appmetrica/analytics/networkapi/Request$Method;

    new-instance v4, Lio/appmetrica/analytics/networkapi/Request$Method;

    const-string v5, "DELETE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lio/appmetrica/analytics/networkapi/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/appmetrica/analytics/networkapi/Request$Method;->DELETE:Lio/appmetrica/analytics/networkapi/Request$Method;

    new-instance v5, Lio/appmetrica/analytics/networkapi/Request$Method;

    const-string v6, "PATCH"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lio/appmetrica/analytics/networkapi/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/appmetrica/analytics/networkapi/Request$Method;->PATCH:Lio/appmetrica/analytics/networkapi/Request$Method;

    new-instance v6, Lio/appmetrica/analytics/networkapi/Request$Method;

    const-string v7, "OPTIONS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v7}, Lio/appmetrica/analytics/networkapi/Request$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/appmetrica/analytics/networkapi/Request$Method;->OPTIONS:Lio/appmetrica/analytics/networkapi/Request$Method;

    filled-new-array/range {v0 .. v6}, [Lio/appmetrica/analytics/networkapi/Request$Method;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/networkapi/Request$Method;->b:[Lio/appmetrica/analytics/networkapi/Request$Method;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lio/appmetrica/analytics/networkapi/Request$Method;->c:Lg03;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/appmetrica/analytics/networkapi/Request$Method;->a:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Lio/appmetrica/analytics/networkapi/Request$Method;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/networkapi/Request$Method;->c:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/Request$Method;
    .locals 1

    const-class v0, Lio/appmetrica/analytics/networkapi/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/networkapi/Request$Method;

    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/networkapi/Request$Method;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/networkapi/Request$Method;->b:[Lio/appmetrica/analytics/networkapi/Request$Method;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/networkapi/Request$Method;

    return-object v0
.end method


# virtual methods
.method public final getMethodName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Request$Method;->a:Ljava/lang/String;

    return-object p0
.end method
