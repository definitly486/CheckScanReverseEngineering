.class public final synthetic Lnp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tapjoy/c0;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/tapjoy/c0;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp9;->b:Lcom/tapjoy/c0;

    iput p2, p0, Lnp9;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnp9;->b:Lcom/tapjoy/c0;

    iget p0, p0, Lnp9;->c:F

    invoke-virtual {v0, p0}, Lcom/tapjoy/c0;->a(F)V

    return-void
.end method
