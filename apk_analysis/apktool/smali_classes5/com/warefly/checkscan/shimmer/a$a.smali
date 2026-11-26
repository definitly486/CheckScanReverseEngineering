.class public final Lcom/warefly/checkscan/shimmer/a$a;
.super Lcom/warefly/checkscan/shimmer/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/shimmer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/shimmer/a$b<",
        "Lcom/warefly/checkscan/shimmer/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/warefly/checkscan/shimmer/a$b;-><init>()V

    iget-object p0, p0, Lcom/warefly/checkscan/shimmer/a$b;->a:Lcom/warefly/checkscan/shimmer/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/shimmer/a;->p:Z

    return-void
.end method


# virtual methods
.method public final c()Lcom/warefly/checkscan/shimmer/a$b;
    .locals 0

    return-object p0
.end method
