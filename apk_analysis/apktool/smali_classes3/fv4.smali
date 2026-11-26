.class public final enum Lfv4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfv4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lfv4;

.field public static final enum Debug:Lfv4;

.field public static final enum Error:Lfv4;

.field public static final enum Info:Lfv4;

.field public static final enum Verbose:Lfv4;

.field public static final enum Warn:Lfv4;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lfv4;

    const-string v1, "Verbose"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfv4;->Verbose:Lfv4;

    new-instance v1, Lfv4;

    const-string v2, "Debug"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfv4;->Debug:Lfv4;

    new-instance v2, Lfv4;

    const-string v3, "Info"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfv4;->Info:Lfv4;

    new-instance v3, Lfv4;

    const-string v4, "Warn"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfv4;->Warn:Lfv4;

    new-instance v4, Lfv4;

    const-string v5, "Error"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lfv4;->Error:Lfv4;

    filled-new-array {v0, v1, v2, v3, v4}, [Lfv4;

    move-result-object v0

    sput-object v0, Lfv4;->$VALUES:[Lfv4;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lfv4;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfv4;
    .locals 1

    const-class v0, Lfv4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfv4;

    return-object p0
.end method

.method public static values()[Lfv4;
    .locals 1

    sget-object v0, Lfv4;->$VALUES:[Lfv4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfv4;

    return-object v0
.end method
