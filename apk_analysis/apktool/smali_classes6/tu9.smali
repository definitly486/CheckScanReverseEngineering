.class public final synthetic Ltu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/jw4;

.field public final synthetic d:Lyads/jw4;


# direct methods
.method public synthetic constructor <init>(Lyads/jw4;Lyads/jw4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Ltu9;->b:I

    iput-object p1, p0, Ltu9;->c:Lyads/jw4;

    iput-object p2, p0, Ltu9;->d:Lyads/jw4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ltu9;->d:Lyads/jw4;

    check-cast p1, Lyads/iw4;

    iget v1, p0, Ltu9;->b:I

    iget-object p0, p0, Ltu9;->c:Lyads/jw4;

    invoke-static {v1, p0, v0, p1}, Lyads/eq2;->a(ILyads/jw4;Lyads/jw4;Lyads/iw4;)V

    return-void
.end method
