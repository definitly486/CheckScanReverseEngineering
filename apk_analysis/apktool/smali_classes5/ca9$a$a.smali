.class public final enum Lca9$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca9$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca9$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lca9$a$a;

.field public static final enum DEFAULT:Lca9$a$a;
    .annotation runtime Lbq7;
        value = "DEFAULT"
    .end annotation
.end field

.field public static final enum GO_TO_URL:Lca9$a$a;
    .annotation runtime Lbq7;
        value = "GO_TO_URL"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lca9$a$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lca9$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca9$a$a;->DEFAULT:Lca9$a$a;

    new-instance v1, Lca9$a$a;

    const-string v2, "GO_TO_URL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lca9$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lca9$a$a;->GO_TO_URL:Lca9$a$a;

    filled-new-array {v0, v1}, [Lca9$a$a;

    move-result-object v0

    sput-object v0, Lca9$a$a;->$VALUES:[Lca9$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lca9$a$a;
    .locals 1

    const-class v0, Lca9$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca9$a$a;

    return-object p0
.end method

.method public static values()[Lca9$a$a;
    .locals 1

    sget-object v0, Lca9$a$a;->$VALUES:[Lca9$a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lca9$a$a;

    return-object v0
.end method
