.class public final Lk67$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk67$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67;->g(Lxc2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lxc2;


# direct methods
.method public constructor <init>(Lxc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$c;->a:Lxc2;

    return-void
.end method


# virtual methods
.method public final a(Lk67$x;)V
    .locals 0

    iget-object p1, p1, Lk67$x;->a:Lcm1;

    iget-object p0, p0, Lk67$c;->a:Lxc2;

    invoke-interface {p1, p0}, Lcm1;->g(Lxc2;)V

    return-void
.end method
