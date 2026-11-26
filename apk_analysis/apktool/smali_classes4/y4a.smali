.class public final synthetic Ly4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tapjoy/internal/p2;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/tapjoy/internal/p2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly4a;->b:Lcom/tapjoy/internal/p2;

    iput p1, p0, Ly4a;->c:I

    iput-object p3, p0, Ly4a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ly4a;->c:I

    iget-object v1, p0, Ly4a;->d:Ljava/lang/String;

    iget-object p0, p0, Ly4a;->b:Lcom/tapjoy/internal/p2;

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/p2;->a(ILjava/lang/String;)V

    return-void
.end method
