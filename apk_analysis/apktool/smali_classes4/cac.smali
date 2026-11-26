.class public final Lcac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llm3;

.field public final b:Z

.field public final c:Lcom/google/common/collect/n;

.field public volatile d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llm3;ZLcom/google/common/collect/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcac;->d:Ljava/lang/String;

    iput-object p1, p0, Lcac;->a:Llm3;

    iput-boolean p2, p0, Lcac;->b:Z

    iput-object p3, p0, Lcac;->c:Lcom/google/common/collect/n;

    return-void
.end method
