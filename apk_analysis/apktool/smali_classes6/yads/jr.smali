.class public final Lyads/jr;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/nr;


# direct methods
.method public constructor <init>(Lyads/nr;)V
    .locals 0

    iput-object p1, p0, Lyads/jr;->a:Lyads/nr;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    iget-object p0, p0, Lyads/jr;->a:Lyads/nr;

    invoke-virtual {p0}, Lyads/nr;->d()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    iget-object p0, p0, Lyads/jr;->a:Lyads/nr;

    invoke-virtual {p0}, Lyads/nr;->d()V

    return-void
.end method
