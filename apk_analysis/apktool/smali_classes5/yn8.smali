.class public final synthetic Lyn8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt57;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;

.field public final synthetic b:Lxn8;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;Lxn8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyn8;->a:Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;

    iput-object p2, p0, Lyn8;->b:Lxn8;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lyn8;->a:Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyn8;->b:Lxn8;

    check-cast p0, Lxn8$a;

    iget-object p0, p0, Lxn8$a;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
