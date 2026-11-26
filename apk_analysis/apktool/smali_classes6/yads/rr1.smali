.class public final enum Lyads/rr1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/qr1;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/rr1;

.field public static final enum f:Lyads/rr1;

.field public static final enum g:Lyads/rr1;

.field public static final synthetic h:[Lyads/rr1;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/rr1;

    const/4 v1, 0x0

    const-string v2, "start"

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v2}, Lyads/rr1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/rr1;->e:Lyads/rr1;

    new-instance v1, Lyads/rr1;

    const/4 v2, 0x1

    const-string v3, "center"

    const-string v4, "CENTER"

    invoke-direct {v1, v4, v2, v3}, Lyads/rr1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/rr1;->f:Lyads/rr1;

    new-instance v2, Lyads/rr1;

    const/4 v3, 0x2

    const-string v4, "end"

    const-string v5, "END"

    invoke-direct {v2, v5, v3, v4}, Lyads/rr1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/rr1;->g:Lyads/rr1;

    filled-new-array {v0, v1, v2}, [Lyads/rr1;

    move-result-object v0

    sput-object v0, Lyads/rr1;->h:[Lyads/rr1;

    new-instance v0, Lyads/qr1;

    invoke-direct {v0}, Lyads/qr1;-><init>()V

    sput-object v0, Lyads/rr1;->c:Lyads/qr1;

    new-instance v0, Luy2;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Luy2;-><init>(I)V

    sput-object v0, Lyads/rr1;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/rr1;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/rr1;
    .locals 2

    sget-object v0, Lyads/rr1;->c:Lyads/qr1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/rr1;->e:Lyads/rr1;

    const-string v1, "start"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/rr1;->f:Lyads/rr1;

    const-string v1, "center"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/rr1;->g:Lyads/rr1;

    const-string v1, "end"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/rr1;
    .locals 1

    const-class v0, Lyads/rr1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/rr1;

    return-object p0
.end method

.method public static values()[Lyads/rr1;
    .locals 1

    sget-object v0, Lyads/rr1;->h:[Lyads/rr1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/rr1;

    return-object v0
.end method
