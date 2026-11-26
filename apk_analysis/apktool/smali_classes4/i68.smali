.class public final Li68;
.super Lk68$a;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ly91$f;


# direct methods
.method public constructor <init>(Lk68;Ljava/lang/CharSequence;Ly91$f;)V
    .locals 0

    iput-object p3, p0, Li68;->i:Ly91$f;

    invoke-direct {p0, p1, p2}, Lk68$a;-><init>(Lk68;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(I)I
    .locals 4

    iget-object v0, p0, Lk68$a;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, v1}, Lo8;->n(II)V

    :goto_0
    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p0, Li68;->i:Ly91$f;

    invoke-virtual {v3, v2}, Ly91$f;->c(C)Z

    move-result v2

    if-eqz v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
