.class public final synthetic Lnr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lyads/ne;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnr9;->b:Lyads/ne;

    iput-boolean p2, p0, Lnr9;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lnr9;->c:Z

    check-cast p1, Lyads/pe;

    iget-object p0, p0, Lnr9;->b:Lyads/ne;

    invoke-static {p0, v0, p1}, Lyads/cj0;->c(Lyads/ne;ZLyads/pe;)V

    return-void
.end method
