.class public final Lyads/x04;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/k66;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lyads/wo;

    invoke-direct {p1}, Lyads/wo;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lyads/hv4;

    invoke-direct {p1}, Lyads/hv4;-><init>()V

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/x04;->a:Lyads/k66;

    return-void
.end method
