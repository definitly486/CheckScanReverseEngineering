.class public final Lmo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llo0;


# instance fields
.field public final a:Lko0;


# direct methods
.method public constructor <init>(Lko0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmo0;->a:Lko0;

    return-void
.end method


# virtual methods
.method public final a(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lmo0;->a:Lko0;

    invoke-interface {p0, p1, p2}, Lko0;->a(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Liz8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lmo0;->a:Lko0;

    invoke-interface {p0, p1, p2}, Lko0;->b(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c(J)Lmz7;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lmo0;->a:Lko0;

    invoke-interface {p0, p1, p2, v0, v0}, Lko0;->c(JII)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final d(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lmo0;->a:Lko0;

    invoke-interface {p0, p1, p2}, Lko0;->e(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final e(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lgo0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lmo0;->a:Lko0;

    invoke-interface {p0, p1, p2}, Lko0;->d(J)Lmz7;

    move-result-object p0

    return-object p0
.end method
