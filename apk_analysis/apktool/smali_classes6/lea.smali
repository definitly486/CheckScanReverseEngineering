.class public final synthetic Llea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/rm0;


# instance fields
.field public final synthetic a:Lyads/mm0;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Lyads/mm0;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llea;->a:Lyads/mm0;

    iput-object p2, p0, Llea;->b:[I

    return-void
.end method


# virtual methods
.method public final a(ILyads/f06;[I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Llea;->a:Lyads/mm0;

    iget-object p0, p0, Llea;->b:[I

    invoke-static {v0, p0, p1, p2, p3}, Lyads/um0;->a(Lyads/mm0;[IILyads/f06;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
