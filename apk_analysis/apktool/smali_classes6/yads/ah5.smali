.class public final Lyads/ah5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/do6;


# direct methods
.method public constructor <init>(Lyads/gw3;Lyads/do6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ah5;->a:Lyads/do6;

    return-void
.end method

.method public static final a()V
    .locals 0

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lyads/hw3;->c:Lyads/hw3;

    iget-object v0, v0, Lyads/hw3;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lyads/gw3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lyads/ah5;->a:Lyads/do6;

    new-instance v0, Lyg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p0, v0}, Lyads/ha4;->a(Landroid/content/Context;Lyads/do6;Lyads/t70;)V

    :cond_1
    return-void
.end method
