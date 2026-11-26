.class public final synthetic Lvv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lxv0;


# direct methods
.method public synthetic constructor <init>(Lxv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvv0;->b:Lxv0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lvv0;->b:Lxv0;

    iget-object p0, p0, Lxv0;->b:Lv53;

    invoke-virtual {p0}, Lv53;->invoke()Ljava/lang/Object;

    return-void
.end method
