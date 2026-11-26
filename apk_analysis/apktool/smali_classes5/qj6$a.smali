.class public final enum Lqj6$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqj6$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqj6$a;

.field public static final enum Offer:Lqj6$a;
    .annotation runtime Lbq7;
        value = "Offer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lqj6$a;

    const-string v1, "Offer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqj6$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqj6$a;->Offer:Lqj6$a;

    filled-new-array {v0}, [Lqj6$a;

    move-result-object v0

    sput-object v0, Lqj6$a;->$VALUES:[Lqj6$a;

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

.method public static valueOf(Ljava/lang/String;)Lqj6$a;
    .locals 1

    const-class v0, Lqj6$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqj6$a;

    return-object p0
.end method

.method public static values()[Lqj6$a;
    .locals 1

    sget-object v0, Lqj6$a;->$VALUES:[Lqj6$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqj6$a;

    return-object v0
.end method
