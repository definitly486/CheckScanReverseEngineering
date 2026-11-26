.class public final synthetic Luv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lrv6;

.field public final synthetic c:Lcom/warefly/checkscan/databinding/ItemQuestionBinding;


# direct methods
.method public synthetic constructor <init>(Lwv6;Lrv6;Lcom/warefly/checkscan/databinding/ItemQuestionBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Luv6;->b:Lrv6;

    iput-object p3, p0, Luv6;->c:Lcom/warefly/checkscan/databinding/ItemQuestionBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Luv6;->b:Lrv6;

    iget-object p0, p0, Luv6;->c:Lcom/warefly/checkscan/databinding/ItemQuestionBinding;

    invoke-static {p1, p0}, Lwv6;->m(Lrv6;Lcom/warefly/checkscan/databinding/ItemQuestionBinding;)V

    return-void
.end method
