.class public final enum Ly08$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly08$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ly08$a;

.field public static final enum CLEARED:Ly08$a;

.field public static final enum COMPLETE:Ly08$a;

.field public static final enum FAILED:Ly08$a;

.field public static final enum PENDING:Ly08$a;

.field public static final enum RUNNING:Ly08$a;

.field public static final enum WAITING_FOR_SIZE:Ly08$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ly08$a;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly08$a;->PENDING:Ly08$a;

    new-instance v1, Ly08$a;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly08$a;->RUNNING:Ly08$a;

    new-instance v2, Ly08$a;

    const-string v3, "WAITING_FOR_SIZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ly08$a;->WAITING_FOR_SIZE:Ly08$a;

    new-instance v3, Ly08$a;

    const-string v4, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly08$a;->COMPLETE:Ly08$a;

    new-instance v4, Ly08$a;

    const-string v5, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ly08$a;->FAILED:Ly08$a;

    new-instance v5, Ly08$a;

    const-string v6, "CLEARED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ly08$a;->CLEARED:Ly08$a;

    filled-new-array/range {v0 .. v5}, [Ly08$a;

    move-result-object v0

    sput-object v0, Ly08$a;->$VALUES:[Ly08$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ly08$a;
    .locals 1

    const-class v0, Ly08$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly08$a;

    return-object p0
.end method

.method public static values()[Ly08$a;
    .locals 1

    sget-object v0, Ly08$a;->$VALUES:[Ly08$a;

    invoke-virtual {v0}, [Ly08$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly08$a;

    return-object v0
.end method
