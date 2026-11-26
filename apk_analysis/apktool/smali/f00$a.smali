.class public final enum Lf00$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf00$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lf00$a;

.field public static final enum FATAL_ERROR:Lf00$a;

.field public static final enum INVALID_PAYLOAD:Lf00$a;

.field public static final enum OK:Lf00$a;

.field public static final enum TRANSIENT_ERROR:Lf00$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lf00$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf00$a;->OK:Lf00$a;

    new-instance v1, Lf00$a;

    const-string v2, "TRANSIENT_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf00$a;->TRANSIENT_ERROR:Lf00$a;

    new-instance v2, Lf00$a;

    const-string v3, "FATAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lf00$a;->FATAL_ERROR:Lf00$a;

    new-instance v3, Lf00$a;

    const-string v4, "INVALID_PAYLOAD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf00$a;->INVALID_PAYLOAD:Lf00$a;

    filled-new-array {v0, v1, v2, v3}, [Lf00$a;

    move-result-object v0

    sput-object v0, Lf00$a;->$VALUES:[Lf00$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lf00$a;
    .locals 1

    const-class v0, Lf00$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf00$a;

    return-object p0
.end method

.method public static values()[Lf00$a;
    .locals 1

    sget-object v0, Lf00$a;->$VALUES:[Lf00$a;

    invoke-virtual {v0}, [Lf00$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf00$a;

    return-object v0
.end method
