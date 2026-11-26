.class public final synthetic Lyf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Landroidx/camera/view/PreviewView;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf6;->b:Landroidx/camera/view/PreviewView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lyf6;->b:Landroidx/camera/view/PreviewView;

    invoke-static/range {p0 .. p9}, Landroidx/camera/view/PreviewView;->b(Landroidx/camera/view/PreviewView;Landroid/view/View;IIIIIIII)V

    return-void
.end method
