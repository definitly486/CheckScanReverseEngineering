.class public final enum Ls48;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls48;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ls48;

.field public static final enum PURCHASE_DATE:Ls48;

.field public static final enum SCAN_DATE:Ls48;


# instance fields
.field private final titleForServer:Ljava/lang/String;

.field private final titleSort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ls48;

    const/4 v1, 0x0

    const-string v2, "\u041f\u043e \u0434\u0430\u0442\u0435 \u043f\u043e\u043a\u0443\u043f\u043a\u0438"

    const-string v3, "PURCHASE_DATE"

    invoke-direct {v0, v3, v1, v3, v2}, Ls48;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ls48;->PURCHASE_DATE:Ls48;

    new-instance v1, Ls48;

    const/4 v2, 0x1

    const-string v3, "\u041f\u043e \u0434\u0430\u0442\u0435 \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0438 \u0447\u0435\u043a\u0430"

    const-string v4, "SCAN_DATE"

    invoke-direct {v1, v4, v2, v4, v3}, Ls48;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Ls48;->SCAN_DATE:Ls48;

    filled-new-array {v0, v1}, [Ls48;

    move-result-object v0

    sput-object v0, Ls48;->$VALUES:[Ls48;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ls48;->titleForServer:Ljava/lang/String;

    iput-object p4, p0, Ls48;->titleSort:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls48;
    .locals 1

    const-class v0, Ls48;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls48;

    return-object p0
.end method

.method public static values()[Ls48;
    .locals 1

    sget-object v0, Ls48;->$VALUES:[Ls48;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls48;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls48;->titleForServer:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls48;->titleSort:Ljava/lang/String;

    return-object p0
.end method
