.class public final synthetic Lmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/a;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmp;->a:Lcom/warefly/checkscan/presentation/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lmp;->a:Lcom/warefly/checkscan/presentation/a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->l:Lhi0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method
