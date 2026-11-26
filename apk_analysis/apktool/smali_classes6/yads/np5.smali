.class public final Lyads/np5;
.super Lyads/i;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/CharSequence;

.field public final e:Lyads/zy;

.field public f:I

.field public g:I

.field public final synthetic h:Lyads/op5;


# direct methods
.method public constructor <init>(Lyads/op5;Lyads/pp5;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lyads/np5;->h:Lyads/op5;

    invoke-direct {p0}, Lyads/i;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lyads/np5;->f:I

    iget-object p1, p2, Lyads/pp5;->a:Lyads/zy;

    iput-object p1, p0, Lyads/np5;->e:Lyads/zy;

    iget p1, p2, Lyads/pp5;->c:I

    iput p1, p0, Lyads/np5;->g:I

    iput-object p3, p0, Lyads/np5;->d:Ljava/lang/CharSequence;

    return-void
.end method
