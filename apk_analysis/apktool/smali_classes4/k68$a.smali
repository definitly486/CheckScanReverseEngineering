.class public abstract Lk68$a;
.super Lp0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/CharSequence;

.field public final e:Ly91;

.field public final f:Z

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lk68;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lp0$a;->NOT_READY:Lp0$a;

    iput-object v0, p0, Lp0;->b:Lp0$a;

    const/4 v0, 0x0

    iput v0, p0, Lk68$a;->g:I

    iget-object v0, p1, Lk68;->a:Ly91;

    iput-object v0, p0, Lk68$a;->e:Ly91;

    iget-boolean v0, p1, Lk68;->b:Z

    iput-boolean v0, p0, Lk68$a;->f:Z

    iget p1, p1, Lk68;->d:I

    iput p1, p0, Lk68$a;->h:I

    iput-object p2, p0, Lk68$a;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(I)I
.end method
