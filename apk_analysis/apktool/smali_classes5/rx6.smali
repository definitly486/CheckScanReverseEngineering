.class public final enum Lrx6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx6;

.field public static final enum Bad:Lrx6;

.field public static final enum Good:Lrx6;

.field public static final enum Middle:Lrx6;

.field public static final enum Perfect:Lrx6;

.field public static final enum VeryBad:Lrx6;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lrx6;

    const-string v1, "Perfect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx6;->Perfect:Lrx6;

    new-instance v1, Lrx6;

    const-string v2, "Good"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrx6;->Good:Lrx6;

    new-instance v2, Lrx6;

    const-string v3, "Middle"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lrx6;->Middle:Lrx6;

    new-instance v3, Lrx6;

    const-string v4, "Bad"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lrx6;->Bad:Lrx6;

    new-instance v4, Lrx6;

    const-string v5, "VeryBad"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lrx6;->VeryBad:Lrx6;

    filled-new-array {v0, v1, v2, v3, v4}, [Lrx6;

    move-result-object v0

    sput-object v0, Lrx6;->$VALUES:[Lrx6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx6;
    .locals 1

    const-class v0, Lrx6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx6;

    return-object p0
.end method

.method public static values()[Lrx6;
    .locals 1

    sget-object v0, Lrx6;->$VALUES:[Lrx6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx6;

    return-object v0
.end method
