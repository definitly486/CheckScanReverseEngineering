.class public final synthetic Le3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/ne6;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lyads/ne6;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3a;->b:Lyads/ne6;

    iput-object p2, p0, Le3a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le3a;->b:Lyads/ne6;

    iget-object p0, p0, Le3a;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lyads/ne6;->b(Ljava/lang/String;)V

    return-void
.end method
