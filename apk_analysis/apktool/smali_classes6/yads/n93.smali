.class public final Lyads/n93;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/o93;


# direct methods
.method public constructor <init>(Lyads/o93;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/n93;->a:Lyads/o93;

    return-void
.end method

.method public static a(Lyads/n93;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lyads/j93;I)V
    .locals 2

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p4, v1

    :cond_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object p5, v1

    :cond_1
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_2

    sget-object p6, Lyads/j93;->a:Lyads/i93;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Lyads/i93;->b:Lyads/j93;

    :cond_2
    invoke-virtual/range {p0 .. p6}, Lyads/n93;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lyads/j93;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lyads/j93;)V
    .locals 0

    const/4 p1, 0x0

    .line 26
    invoke-interface {p6, p1}, Lyads/j93;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lyads/n93;->a:Lyads/o93;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    if-eqz p4, :cond_1

    .line 28
    invoke-interface {p6, p4}, Lyads/j93;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    iget-object p0, p0, Lyads/n93;->a:Lyads/o93;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
