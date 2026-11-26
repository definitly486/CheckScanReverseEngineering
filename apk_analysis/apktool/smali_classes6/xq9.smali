.class public final synthetic Lxq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:I

.field public final synthetic d:Lyads/jw4;

.field public final synthetic e:Lyads/jw4;


# direct methods
.method public synthetic constructor <init>(Lyads/ne;ILyads/jw4;Lyads/jw4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxq9;->b:Lyads/ne;

    iput p2, p0, Lxq9;->c:I

    iput-object p3, p0, Lxq9;->d:Lyads/jw4;

    iput-object p4, p0, Lxq9;->e:Lyads/jw4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lxq9;->e:Lyads/jw4;

    check-cast p1, Lyads/pe;

    iget-object v1, p0, Lxq9;->b:Lyads/ne;

    iget v2, p0, Lxq9;->c:I

    iget-object p0, p0, Lxq9;->d:Lyads/jw4;

    invoke-static {v1, v2, p0, v0, p1}, Lyads/cj0;->a(Lyads/ne;ILyads/jw4;Lyads/jw4;Lyads/pe;)V

    return-void
.end method
