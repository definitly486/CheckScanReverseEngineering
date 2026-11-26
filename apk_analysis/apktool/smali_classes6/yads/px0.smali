.class public final enum Lyads/px0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/ox0;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/px0;

.field public static final enum f:Lyads/px0;

.field public static final enum g:Lyads/px0;

.field public static final enum h:Lyads/px0;

.field public static final enum i:Lyads/px0;

.field public static final enum j:Lyads/px0;

.field public static final synthetic k:[Lyads/px0;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lyads/px0;

    const/4 v1, 0x0

    const-string v2, "start"

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v2}, Lyads/px0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/px0;->e:Lyads/px0;

    new-instance v1, Lyads/px0;

    const/4 v2, 0x1

    const-string v3, "stop"

    const-string v4, "STOP"

    invoke-direct {v1, v4, v2, v3}, Lyads/px0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/px0;->f:Lyads/px0;

    new-instance v2, Lyads/px0;

    const/4 v3, 0x2

    const-string v4, "pause"

    const-string v5, "PAUSE"

    invoke-direct {v2, v5, v3, v4}, Lyads/px0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/px0;->g:Lyads/px0;

    new-instance v3, Lyads/px0;

    const/4 v4, 0x3

    const-string v5, "resume"

    const-string v6, "RESUME"

    invoke-direct {v3, v6, v4, v5}, Lyads/px0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/px0;->h:Lyads/px0;

    new-instance v4, Lyads/px0;

    const/4 v5, 0x4

    const-string v6, "cancel"

    const-string v7, "CANCEL"

    invoke-direct {v4, v7, v5, v6}, Lyads/px0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/px0;->i:Lyads/px0;

    new-instance v5, Lyads/px0;

    const/4 v6, 0x5

    const-string v7, "reset"

    const-string v8, "RESET"

    invoke-direct {v5, v8, v6, v7}, Lyads/px0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/px0;->j:Lyads/px0;

    filled-new-array/range {v0 .. v5}, [Lyads/px0;

    move-result-object v0

    sput-object v0, Lyads/px0;->k:[Lyads/px0;

    new-instance v0, Lyads/ox0;

    invoke-direct {v0}, Lyads/ox0;-><init>()V

    sput-object v0, Lyads/px0;->c:Lyads/ox0;

    new-instance v0, Lec9;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lec9;-><init>(I)V

    sput-object v0, Lyads/px0;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/px0;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/px0;
    .locals 2

    sget-object v0, Lyads/px0;->c:Lyads/ox0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/px0;->e:Lyads/px0;

    const-string v1, "start"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/px0;->f:Lyads/px0;

    const-string v1, "stop"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/px0;->g:Lyads/px0;

    const-string v1, "pause"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/px0;->h:Lyads/px0;

    const-string v1, "resume"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lyads/px0;->i:Lyads/px0;

    const-string v1, "cancel"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lyads/px0;->j:Lyads/px0;

    const-string v1, "reset"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/px0;
    .locals 1

    const-class v0, Lyads/px0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/px0;

    return-object p0
.end method

.method public static values()[Lyads/px0;
    .locals 1

    sget-object v0, Lyads/px0;->k:[Lyads/px0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/px0;

    return-object v0
.end method
