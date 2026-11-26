.class public final Lk67$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk67$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "u"
.end annotation


# instance fields
.field public final synthetic a:Lk67;


# direct methods
.method public constructor <init>(Lk67;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$u;->a:Lk67;

    return-void
.end method


# virtual methods
.method public final a(Lk67$x;)V
    .locals 2

    iget-object v0, p1, Lk67$x;->a:Lcm1;

    new-instance v1, Lk67$w;

    iget-object p0, p0, Lk67$u;->a:Lk67;

    invoke-direct {v1, p0, p1}, Lk67$w;-><init>(Lk67;Lk67$x;)V

    invoke-interface {v0, v1}, Lcm1;->i(Ldm1;)V

    return-void
.end method
