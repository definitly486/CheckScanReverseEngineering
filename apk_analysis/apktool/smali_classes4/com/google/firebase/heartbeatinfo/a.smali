.class public final synthetic Lcom/google/firebase/heartbeatinfo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/Preferences$Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/a;->b:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/heartbeatinfo/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/heartbeatinfo/a;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/a;->b:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/a;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/a;->d:Ljava/lang/String;

    invoke-static {v1, v2, p0, v0, p1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->b(Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/Preferences$Key;Landroidx/datastore/preferences/core/MutablePreferences;)Lj59;

    move-result-object p0

    return-object p0
.end method
