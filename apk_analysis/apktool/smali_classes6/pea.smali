.class public final synthetic Lpea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/rm0;


# instance fields
.field public final synthetic a:Lyads/um0;

.field public final synthetic b:Lyads/mm0;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lyads/um0;Lyads/mm0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpea;->a:Lyads/um0;

    iput-object p2, p0, Lpea;->b:Lyads/mm0;

    iput-boolean p3, p0, Lpea;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ILyads/f06;[I)Ljava/util/List;
    .locals 6

    iget-object v1, p0, Lpea;->b:Lyads/mm0;

    iget-boolean v2, p0, Lpea;->c:Z

    iget-object v0, p0, Lpea;->a:Lyads/um0;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lyads/um0;->a(Lyads/mm0;ZILyads/f06;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
