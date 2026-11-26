.class public final Lez4$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnz4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lez4;


# direct methods
.method public constructor <init>(Lez4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$g;->a:Lez4;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object p0, p0, Lez4$g;->a:Lez4;

    iget-object v0, p0, Lez4;->Y:Lez4$i;

    iget-object v1, p0, Lez4;->D:Lel2;

    invoke-virtual {v0, v1, p1}, Lu1;->o(Ljava/lang/Object;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lez4;->g()V

    :cond_0
    return-void
.end method
