.class public final enum Lyads/h81;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/g81;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/h81;

.field public static final enum f:Lyads/h81;

.field public static final enum g:Lyads/h81;

.field public static final synthetic h:[Lyads/h81;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/h81;

    const/4 v1, 0x0

    const-string v2, "vertical"

    const-string v3, "VERTICAL"

    invoke-direct {v0, v3, v1, v2}, Lyads/h81;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/h81;->e:Lyads/h81;

    new-instance v1, Lyads/h81;

    const/4 v2, 0x1

    const-string v3, "horizontal"

    const-string v4, "HORIZONTAL"

    invoke-direct {v1, v4, v2, v3}, Lyads/h81;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/h81;->f:Lyads/h81;

    new-instance v2, Lyads/h81;

    const/4 v3, 0x2

    const-string v4, "overlap"

    const-string v5, "OVERLAP"

    invoke-direct {v2, v5, v3, v4}, Lyads/h81;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/h81;->g:Lyads/h81;

    filled-new-array {v0, v1, v2}, [Lyads/h81;

    move-result-object v0

    sput-object v0, Lyads/h81;->h:[Lyads/h81;

    new-instance v0, Lyads/g81;

    invoke-direct {v0}, Lyads/g81;-><init>()V

    sput-object v0, Lyads/h81;->c:Lyads/g81;

    new-instance v0, Ldr8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldr8;-><init>(I)V

    sput-object v0, Lyads/h81;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/h81;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/h81;
    .locals 2

    sget-object v0, Lyads/h81;->c:Lyads/g81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/h81;->e:Lyads/h81;

    const-string v1, "vertical"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/h81;->f:Lyads/h81;

    const-string v1, "horizontal"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/h81;->g:Lyads/h81;

    const-string v1, "overlap"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/h81;
    .locals 1

    const-class v0, Lyads/h81;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/h81;

    return-object p0
.end method

.method public static values()[Lyads/h81;
    .locals 1

    sget-object v0, Lyads/h81;->h:[Lyads/h81;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/h81;

    return-object v0
.end method
