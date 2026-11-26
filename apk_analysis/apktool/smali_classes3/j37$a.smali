.class public final enum Lj37$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj37$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj37$a;

.field public static final enum CLEARED:Lj37$a;

.field public static final enum FAILED:Lj37$a;

.field public static final enum PAUSED:Lj37$a;

.field public static final enum RUNNING:Lj37$a;

.field public static final enum SUCCESS:Lj37$a;


# instance fields
.field private final isComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lj37$a;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lj37$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lj37$a;->RUNNING:Lj37$a;

    new-instance v1, Lj37$a;

    const-string v3, "PAUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lj37$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lj37$a;->PAUSED:Lj37$a;

    new-instance v3, Lj37$a;

    const-string v5, "CLEARED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lj37$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lj37$a;->CLEARED:Lj37$a;

    new-instance v2, Lj37$a;

    const-string v5, "SUCCESS"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v4}, Lj37$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lj37$a;->SUCCESS:Lj37$a;

    new-instance v5, Lj37$a;

    const-string v6, "FAILED"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v4}, Lj37$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lj37$a;->FAILED:Lj37$a;

    filled-new-array {v0, v1, v3, v2, v5}, [Lj37$a;

    move-result-object v0

    sput-object v0, Lj37$a;->$VALUES:[Lj37$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lj37$a;->isComplete:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj37$a;
    .locals 1

    const-class v0, Lj37$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj37$a;

    return-object p0
.end method

.method public static values()[Lj37$a;
    .locals 1

    sget-object v0, Lj37$a;->$VALUES:[Lj37$a;

    invoke-virtual {v0}, [Lj37$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj37$a;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lj37$a;->isComplete:Z

    return p0
.end method
