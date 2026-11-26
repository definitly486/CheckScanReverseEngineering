.class public final Lk67$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk67$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk67$h;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lk67$x;)V
    .locals 0

    iget-object p1, p1, Lk67$x;->a:Lcm1;

    iget p0, p0, Lk67$h;->a:I

    invoke-interface {p1, p0}, Lcm1;->b(I)V

    return-void
.end method
