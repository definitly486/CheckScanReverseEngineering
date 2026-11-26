.class public final Lyads/m36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n36;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:Lnl3;


# direct methods
.method public constructor <init>(Lnl3;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lyads/m36;->b:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/m36;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lyads/m36;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lyads/m36;->b:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
