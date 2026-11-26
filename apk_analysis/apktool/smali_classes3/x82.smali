.class public final synthetic Lx82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lr22;

.field public final synthetic c:Landroidx/paging/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Lr22;Landroidx/paging/DataSource$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx82;->b:Lr22;

    iput-object p2, p0, Lx82;->c:Landroidx/paging/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx82;->b:Lr22;

    iget-object p0, p0, Lx82;->c:Landroidx/paging/DataSource$Factory;

    invoke-static {v0, p0}, Landroidx/paging/DataSource$Factory;->c(Lr22;Landroidx/paging/DataSource$Factory;)Landroidx/paging/PagingSource;

    move-result-object p0

    return-object p0
.end method
