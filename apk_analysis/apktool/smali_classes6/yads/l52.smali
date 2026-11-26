.class public final Lyads/l52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/i36;


# instance fields
.field public final synthetic a:Lyads/s52;


# direct methods
.method public constructor <init>(Lyads/s52;)V
    .locals 0

    iput-object p1, p0, Lyads/l52;->a:Lyads/s52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/l52;->a:Lyads/s52;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lyads/yt5;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lnl3;)V
    .locals 0

    .line 14
    iget-object p0, p0, Lyads/l52;->a:Lyads/s52;

    invoke-virtual {p0, p1}, Lyads/yt5;->setOnCheckedChangeListener(Lnl3;)V

    return-void
.end method
