.class public Lp3b;
.super Lt6b;
.source "SourceFile"


# instance fields
.field public final b:Lp0b;


# direct methods
.method public constructor <init>(Lp0b;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lp3b;->b:Lp0b;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lp3b;->b:Lp0b;

    invoke-virtual {p0, p1}, Lp0b;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lp3b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lp3b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->size()I

    move-result p0

    return p0
.end method
