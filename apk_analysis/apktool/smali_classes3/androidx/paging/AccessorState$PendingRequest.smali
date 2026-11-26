.class public final Landroidx/paging/AccessorState$PendingRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/AccessorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loadType:Landroidx/paging/LoadType;

.field private pagingState:Landroidx/paging/PagingState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/AccessorState$PendingRequest;->loadType:Landroidx/paging/LoadType;

    iput-object p2, p0, Landroidx/paging/AccessorState$PendingRequest;->pagingState:Landroidx/paging/PagingState;

    return-void
.end method


# virtual methods
.method public final getLoadType()Landroidx/paging/LoadType;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AccessorState$PendingRequest;->loadType:Landroidx/paging/LoadType;

    return-object p0
.end method

.method public final getPagingState()Landroidx/paging/PagingState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/AccessorState$PendingRequest;->pagingState:Landroidx/paging/PagingState;

    return-object p0
.end method

.method public final setPagingState(Landroidx/paging/PagingState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/paging/AccessorState$PendingRequest;->pagingState:Landroidx/paging/PagingState;

    return-void
.end method
