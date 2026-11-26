.class public final synthetic Lv0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/kg;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/kg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0a;->b:Lcom/my/target/kg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/my/target/kg;->T:I

    iget-object p0, p0, Lv0a;->b:Lcom/my/target/kg;

    iget-object p1, p0, Lcom/my/target/hg;->g:Lcom/my/target/c3;

    iget-object p0, p0, Lcom/my/target/hg;->Q:Le6a;

    invoke-virtual {p1, p0}, Lcom/my/target/c3;->h(Le6a;)V

    return-void
.end method
