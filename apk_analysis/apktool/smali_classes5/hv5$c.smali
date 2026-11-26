.class public final enum Lhv5$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhv5$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhv5$c;

.field public static final enum PLAINTEXT:Lhv5$c;

.field public static final enum TLS:Lhv5$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lhv5$c;

    const-string v1, "TLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhv5$c;->TLS:Lhv5$c;

    new-instance v1, Lhv5$c;

    const-string v2, "PLAINTEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhv5$c;->PLAINTEXT:Lhv5$c;

    filled-new-array {v0, v1}, [Lhv5$c;

    move-result-object v0

    sput-object v0, Lhv5$c;->$VALUES:[Lhv5$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lhv5$c;
    .locals 1

    const-class v0, Lhv5$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhv5$c;

    return-object p0
.end method

.method public static values()[Lhv5$c;
    .locals 1

    sget-object v0, Lhv5$c;->$VALUES:[Lhv5$c;

    invoke-virtual {v0}, [Lhv5$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhv5$c;

    return-object v0
.end method
