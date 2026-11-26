.class public final synthetic Lvn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lyads/ao1;


# direct methods
.method public synthetic constructor <init>(Lyads/ao1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvn9;->b:Lyads/ao1;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lvn9;->b:Lyads/ao1;

    invoke-static {p0, p1}, Lyads/ao1;->a(Lyads/ao1;Landroid/content/DialogInterface;)V

    return-void
.end method
