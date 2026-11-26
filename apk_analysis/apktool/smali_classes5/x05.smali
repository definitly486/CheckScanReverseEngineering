.class public final Lx05;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx05$a;
    }
.end annotation


# instance fields
.field public final a:Ld15;

.field public final b:Lrm9;

.field public final c:Lqq4;

.field public final d:Li14$a;

.field public final e:Lc15;


# direct methods
.method public constructor <init>(Lx05$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lx05$a;->a:Ld15;

    iput-object v0, p0, Lx05;->a:Ld15;

    iget-object v0, p1, Lx05$a;->c:Lrm9;

    iput-object v0, p0, Lx05;->b:Lrm9;

    iget-object v0, p1, Lx05$a;->d:Lqq4;

    iput-object v0, p0, Lx05;->c:Lqq4;

    iget-object v0, p1, Lx05$a;->e:Li14$a;

    iput-object v0, p0, Lx05;->d:Li14$a;

    iget-object p1, p1, Lx05$a;->g:Lc15;

    iput-object p1, p0, Lx05;->e:Lc15;

    return-void
.end method
