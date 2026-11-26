.class public final synthetic Lga8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga8;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lja8$a;

    iget-object p0, p0, Lga8;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lja8$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
